
install.packages("devtools")
library(devtools)
install_github('slidify/ramnathv')
install_github('slidifyLibraries', 'ramnathv')
install.packages("slidify")
library(slidify)

setwd("C:/Users/307002645/SURESH/SPA/Data Science/Data_Science/4_Developing_Data_Products/PROJECT")
author("first_deck")
setwd("C:/Users/307002645/SURESH/SPA/Data Science/Data_Science/4_Developing_Data_Products/PROJECT/first_deck")
browseURL('first_deck/index.html')
