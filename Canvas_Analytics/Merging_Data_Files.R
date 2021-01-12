#Merge canvas data with STAR student info
#reading in Fall 2020 Student Info CSV File
Fall20_Student_Info <- read.csv("C:/Users/macnell/Documents/Canvas_Repository/Canvas/New Analytics/Fall 2020/ECCC Survey/Fall 2020/Fall_2020_Student_Info.csv")

#Reading in 14 day course activity report from 1.12.20
Report_1_12 <- read.csv("C:/Users/macnell/Documents/Canvas_Repository/Canvas/New Analytics/Fall 2020/ECCC Survey/Fall 2020/14_day_1_12_20.csv")

#Reading in Student Info report from 1.12.20 that contains cwid. 
Students_1_12 <- read.csv("C:/Users/macnell/Documents/Canvas_Repository/Canvas/New Analytics/Fall 2020/ECCC Survey/Fall 2020/stud_info_1_12_20.csv")

#merging Students_1_12 and Report_1_12
Complete_1_12 <- merge(Students_1_12, Report_1_12,by=c("Last"),all.x = T, no.dups = F)

#merge new complete csv with GradesFirst Demographic Info 
Activity_Demographics <- merge(Complete_1_12, Fall20_Student_Info,by=c("Primary"), all.x = T, no.dups = F)

#download new csv to analyze and clean up 
write.csv(Activity_Demographics,file="C:/Users/macnell/Documents/Canvas_Repository/Activity_Demographics.csv", row.names = TRUE)
