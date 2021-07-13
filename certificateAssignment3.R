#install.packages('randomNames') # a library that samples from a dataset of real names
library(randomNames) # attach the package to session
Names <- randomNames(100) # create a vector of random names
Credit <- sample(300:850,100,replace=T) # create a vector of random credit scores
data <- data.frame(Names, Credit) # store Names and Credit in a data frame
head(data) # to check out the first few rows

firstNameList = character(length = 100)
lastNameList = character(length = 100)

data$Names

#1
#creating first and last name lists
i = 1
for (name in data$Names) {
  name = unlist(strsplit(name, split = ","))
  firstName = name[2]
  firstNameList[i] = firstName
  
  lastName = name[1]
  lastNameList[i] = lastName
  i = i + 1
}

#firstNameList (for testing purposes)
#lastNameList  (for testing purposes)

#making updated data frame
my_df <- data.frame(FirstName = c(firstNameList), LastName = c(lastNameList), Credit)
my_df

#2
emailList = character(length = 100)

for (i in 1:nrow(my_df)) {
  first = my_df[i, 1]
  last = my_df[i, 2]
  Email = paste(first, '.', last, "@bank.com", sep="")
  emailList[i] = Email
}
#emailList

#making updated data frame
my_df <- data.frame(FirstName = c(firstNameList), LastName = c(lastNameList), Credit, Email = c(emailList))
my_df

#3
emailMessageList = character(length = 100)
for (i in 1:nrow(my_df)) {
  credit = my_df[i, 3]
  if (credit > 700) {
    emailMessageList[i] = paste("Congrats", my_df[i, 4], ", you are qualified for a loan based on your credit score of", credit)
  }
}

#making updated data frame
my_df <- data.frame(FirstName = c(firstNameList), LastName = c(lastNameList), Credit, Email = c(emailList), EmailMessage = c(emailMessageList))
my_df




