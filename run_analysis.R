library("dplyr")

features <- read.table("uci_har_dataset/features.txt", 
                       quote="\"", comment.char="")

fields <- as.character(features[[2]])

#remove "()"
fields <- sub("\\(\\)", "", fields, perl=TRUE) 

#subtitute , for _
fields <- sub(",", "_", fields, perl=TRUE)

#subtitute - for _
fields <- gsub("-", "_", fields, perl=TRUE)

#subtitute capital_character for _lowercase(capital_character)
fields <- gsub("([a-z])([A-Z])", "\\1_\\L\\2", fields, perl = TRUE) 

#XYZ to zxy
fields <- gsub("([A-Z])", "\\L\\1", fields, perl = TRUE)

subject_train <- read.table("uci_har_dataset/train/subject_train.txt", 
                                 quote="\"", comment.char="")

x_train <- read.table("uci_har_dataset/train/X_train.txt", 
                            quote="\"", comment.char="")

names(x_train) <- fields

#get only the columns that start with a t ot an f ans where there is a _mean_[xyz] 
#or a _mean or a _std_[xyz] or a _std
x_train <- x_train[grep("^[f-t](.*)_mean((_[x-z])?)$|^[f-t](.*)_std((_[x-z])?)$", fields)]

y_train <- read.table("uci_har_dataset/train/y_train.txt", 
                      quote="\"", comment.char="")

df_train <- mutate(x_train, subject = subject_train[[1]])
df_train <- mutate(df_train, activity = y_train[[1]])


subject_test <- read.table("uci_har_dataset/test/subject_test.txt", 
                            quote="\"", comment.char="")

x_test <- read.table("uci_har_dataset/test/X_test.txt", 
                      quote="\"", comment.char="")
names(x_test) <- fields

#get only the columns that start with a t ot an f ans where there is a _mean_[xyz] 
#or a _mean or a _std_[xyz] or a _std
x_test <- x_test[grep("^[f-t](.*)_mean((_[x-z])?)$|^[f-t](.*)_std((_[x-z])?)$", fields)]

y_test <- read.table("uci_har_dataset/test/y_test.txt", 
                      quote="\"", comment.char="")

df_test <- mutate(x_test, subject = subject_test[[1]])
df_test <- mutate(df_test, activity = y_test[[1]])


df <- rbind(df_train, df_test)

activity_labels_table <- read.table("uci_har_dataset/activity_labels.txt", 
                              quote="\"", comment.char="")


activity_labels <- as.character(activity_labels_table[,2])

df$activity = factor(df$activity, levels = sort(unique(df$activity)), labels = activity_labels)

means_subject_activity <- df %>% group_by(subject, activity) %>% summarise_at(vars(1:66), funs(mean(., na.rm=TRUE)))

# spl <- split(df, df[,c('subject','activity')])
# sap <- sapply(spl, function(x) colMeans(x[,1:66]))
# pas <- t(sap)
# groups <- rownames(pas)
# 
# df_pas <- data.frame(pas)
# df_pas$subject <- sapply(strsplit(as.character(groups),'[.]'), "[", 1)
# df_pas$activity <- sapply(strsplit(as.character(groups),'[.]'), "[", 2)
