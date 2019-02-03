library("dplyr")

ensamble_dataframe <- function(subject_path, x_path, y_path, clean_fields){
    ## this function reads from 3 text files to make a dataframe and asign clean 
    ## column names to it using clean_fields parameter
  
    ## read text files
    subject <- read.table(subject_path, quote="\"", comment.char="")
    x <- read.table(x_path, quote="\"", comment.char="")
    y <- read.table(y_path, quote="\"", comment.char="")
    
    #asign clean names to columns
    names(x) <- clean_fields
    
    #get only the columns that start with a t ot an f and where there is a _mean_[xyz] 
    #or a _mean or a _std_[xyz] or a _std
    x <- x[grep("^[f-t](.*)_mean((_[x-z])?)$|^[f-t](.*)_std((_[x-z])?)$", clean_fields)]
    
    #add subject and activity
    df <- mutate(x, subject = subject[[1]])
    df <- mutate(df, activity = y[[1]])
    df
}

## get clean column names from dirty names in features.txt
dirty_columns <- read.table("uci_har_dataset/features.txt", quote="\"", comment.char="")
clean_fields <- as.character(dirty_columns[[2]])
clean_fields <- sub("\\(\\)", "", clean_fields, perl=TRUE) #remove "()"
clean_fields <- sub(",", "_", clean_fields, perl=TRUE) #subtitute "," for "_"
clean_fields <- gsub("-", "_", clean_fields, perl=TRUE) #subtitute "-" for "_"
clean_fields <- gsub("([a-z])([A-Z])", "\\1_\\L\\2", clean_fields, perl = TRUE) #Camel to _lower
clean_fields <- gsub("([A-Z])", "\\L\\1", clean_fields, perl = TRUE) #"X|Y|Z" to "z|x|y"


#get train dataframe
s_train_path <- "uci_har_dataset/train/subject_train.txt"
x_train_path <- "uci_har_dataset/train/X_train.txt"
y_train_path <- "uci_har_dataset/train/y_train.txt"
df_train <- ensamble_dataframe(s_train_path, x_train_path, y_train_path, clean_fields)

#get test dataframe
s_test_path <- "uci_har_dataset/test/subject_test.txt"
x_test_path <- "uci_har_dataset/test/X_test.txt"
y_test_path <- "uci_har_dataset/test/y_test.txt"
df_test <- ensamble_dataframe(s_test_path, x_test_path, y_test_path, clean_fields)

#merge test and train dataframes
df <- rbind(df_train, df_test)

#add apropiate labels to activity column
activity_labels_table <- read.table("uci_har_dataset/activity_labels.txt", quote="\"", comment.char="")
activity_labels <- as.character(activity_labels_table[,2])
df$activity = factor(df$activity, levels = sort(unique(df$activity)), labels = activity_labels)

#get mean of each measurement by subject and activity in a tidy dataframe
means_subject_activity <- df %>% group_by(subject, activity) %>% summarise_at(vars(1:66), funs(mean(., na.rm=TRUE)))
