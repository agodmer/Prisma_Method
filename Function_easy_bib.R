EasyBib<-function(
    pathWay = "~/RIS_files"
    ){
  # import ris files
  files.RIS <- list.files(pattern = ".ris", recursive = TRUE)
  data.RIS<- list()
  for(i in 1:length(files.RIS)){
    print("Number of references per file:")
    print(paste(i,files.RIS[i]));
  data.RIS[[i]] <- revtools::read_bibliography(files.RIS[[i]])
    print(nrow(data.RIS[[i]]))
  }
  names(data.RIS)=names(files.RIS)
  data.bib=revtools::read_bibliography(files.RIS)
  # find duplicated DOIs within the dataset
  doi_match <- revtools::find_duplicates(data.bib,
                                         match_variable = "doi",
                                         group_variables = NULL,
                                         match_function = "exact"
  )
  # automatically extract one row per duplicate
  data_unique <- revtools::extract_unique_references(data.bib, doi_match)
  print("Number of unique references:")
  nrow(data_unique) 
  print("Number of duplicates:")
  print(nrow(data.bib)-nrow(data_unique))
  ## Screen tittle
  revtools::screen_abstracts(data_unique)
}