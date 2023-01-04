# Prisma Method

## 1. Guidelines
See [guidelines](https://guides.lib.unc.edu/systematic-reviews/write)

## 2. Convert files in RIS fromat
See easy steps to convert files in RIS fromat : [bibtext](https://www.bibtex.com/c/bibtex-to-ris-converter/)

## 3. Bibliography analysis with the `revtools` package
- Download files from [this repository](https://github.com/agodmer/Prisma_Method.git)
- Place all RIS files in  a folder (RIS_files for this example)
- Execute `EasyBib` function available in this repository with pathway argument corresponding to the folder with all RIS files:
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
