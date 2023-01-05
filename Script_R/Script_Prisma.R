#library revtools
if (!require("revtools", quietly = TRUE))
  install.packages("revtools")
#source the EasyBib function
source(paste0("https://raw.githubusercontent.com/agodmer/Prisma_Method/main/Function_easy_bib.R"))
#use the EasyBib function 
EasyBib(pathWay = ".")