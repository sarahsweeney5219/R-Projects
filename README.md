# R-Projects
Projects I completed to attain the Gmelich Lab for Financial Markets @ Villanova University R Certification. 

*Section 1 Assignment Instructions:

Use the rnorm() function to sample from the standard normal distribution (see help(rnorm) for assistance). Store samples of size 10, 100, and 1,000 in variables x1, x2, and x3. Using the formulas above, calculate sample mean and variance for each and store in appropriately named variables (mean1, mean2, mean3, etc.). The larger the sample, the closer should the mean be to zero and variance to one (but may not be due to the random nature of the samples). Please store those calculations in vectors, one for mean and one for variance. Print those vectors to the screen.

To get familiar with R plotting, please plot the densities of each vector with this code.

plot(density(x1))

lines(density(x2))

lines(density(x3))

This is a great example of function nesting. The plot() function takes the product of the density() function to draw a density plot.

I’d like you to use the plot documentation and online resources to figure out how to make the density line for x2 red and the density line for x3 green by adding parameters to those lines() functions. I’d like you to add a title to the graph.

I’d like you to add vertical lines at the mean value of each vector using the same color assignments. You can use the function abline() for this.

*Section 2 Assignment Instructions:

Submit your .R file on Blackboard. This assignment practices this section’s skills while exploring R’s built-in linear regression functionality via lm() and summary().

You will use real data on wages provided by the wooldridge package. Run these following lines in your R script to get you set up and show you the structure of the data.

install.packages('wooldridge') # only need to run once

library(wooldridge) # run each time you start a new R session

data(wage1) # grabs the data from wooldridge library

str(wage1) # structure of data

Run a regression of wage on education via lm(wage ~ educ) storing the operation in a variable called ‘reg_model’. To compute the full regression results, run summary(reg_model_name) storing the operation in a variable called ‘reg_summary’. The summary output is a named list so you can access its various elements multiple ways.

You will create a modified coefficients table (data frame or list, your choice) to add the confidence interval to the table from summary(). Your table, stored as a new object will contain everything the original coefficients table contains but with confidence intervals added on (two new columns). You can name columns with colnames(df) <- c() and name rows with row.names(df) <- c(), where inside the vector you’ll provide comma-separated names in "" because names are character strings.

These confidence levels reflect the beta estimates’ sensitivity to the particular sample. A tight confidence band indicates that the beta estimate is less likely to vary with a new sample. Use the following formula for a 95% confidence interval using a z-score of 1.96.

CI=βi±1.96∗se(βi)n√

βi is the estimate for the intercept and slope.

se(βi) is the standard error of the estimate for the intercept and slope.

n‾√ is the square root of the number of observations.

*Section 3 Assignment Instructions:

First, use the library randomNames to create a DataFrame with 100 Name and randomly generated Credit columns.

Your boss does not like the format of the Names so she wants first and last names in separate columns. You are to create first name and last name columns attached to the current data set. I recommend trying your code out on a single value before attempting on all rows of the data. The function strsplit() will split the string for you into a list. Use unlist() around the output of strsplit() to get an easily subsettable vector.

Next you are asked to email each person in this data set. Since they have accounts at your bank, they have been given email addresses following the form Email = ‘First.Last@bank.com’. Attach a new column to the data set above with column name Email containing these email addresses. Use the function paste() or paste0() to help.

You now need to write the actual email messages. You should store these email messages inside a vector called ‘EmailMessage’ that you attach as a new column to the above data set. If they have a credit score equal or above 700, the message should read, "Congrats Email, you are qualified for a loan based on your credit score of Credit, where you should replace Email and Credit with the variable values. If they have a credit score less than 700, you should construct a declined email message. Again, paste() will be helpful.

There are multiple ways to approach this assignment so experiment with some of the concepts discussed in this section. I will ask for resubmissions if the formatting and spacing is not correct. Email gmelichlab@villanova.edu with any questions.

