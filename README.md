# Prisma Method

## 1. Guidelines
See [guidelines](https://guides.lib.unc.edu/systematic-reviews/write)

## 2. Convert files in RIS fromat
See easy steps to convert files in RIS fromat : [bibtext](https://www.bibtex.com/c/bibtex-to-ris-converter/)

## 3. Bibliography analysis with the `revtools` package
- Place all .ris files in  a folder (called RIS_files for this example with 3 .ris files at this [link](https://github.com/agodmer/Prisma_Method/tree/main/RIS_files))
- Execute `EasyBib` function with the `pathWay` argument corresponding to the path to the folder containing the ris files with the following code:
```
#library revtools
require(revtools)
#source the EasyBib function
source(paste0("https://raw.githubusercontent.com/agodmer/Prisma_Method/main/Function_easy_bib.R"))
#source EasyBib function
source('Function_easy_bib.R')
#use the EasyBib function 
EasyBib(pathWay = "~/RIS_files")
```
