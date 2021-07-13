#install.packages('wooldridge')
library(wooldridge)
data(wage1)
str(wage1)

reg_model <- lm(wage ~ educ, data = wage1)
reg_summary <- summary(reg_model)

reg_summary

interceptLower95 <- reg_summary$coefficients[1,1] - 1.96 * (reg_summary$coefficients[1,2] / sqrt(526)) 
#interceptLower95

interceptUpper95 <- reg_summary$coefficients[1,1] + 1.96 * (reg_summary$coefficients[1,2] / sqrt(526)) 
#interceptUpper95

educLower95 <- reg_summary$coefficients[2,1] - 1.96 * (reg_summary$coefficients[2,2] / sqrt(526)) 
#educLower95

educUpper95 <- reg_summary$coefficients[2,1] + 1.96 * (reg_summary$coefficients[2,2] / sqrt(526))
#educUpper95

my_df <- data.frame(Lower95 = c(interceptLower95, educLower95), Upper95 = c(interceptUpper95, educUpper95) )
colnames(my_df) <- c("Lower95", "Upper95")
rownames(my_df) <- c("(Intercept)", "educ")
my_df

reg_summary$coefficients
output = merge(reg_summary$coefficients, my_df, by=0)
output

