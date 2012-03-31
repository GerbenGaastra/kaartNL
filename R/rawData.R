# Download selected dataset from 'http://downloads.cloudmade.com/'
# by GT Gaastra
# inspired by: http://oegeo.wordpress.com/2008/11/18/gemeentegrenzen-uit-openstreetmap/



# initilizing
if("RCurl" %in% rownames(installed.packages())){
    require("RCurl")
}else{
  stop("Please install the RCurl package (install.packages(\"RCurl\")")
}

baseURI <- "http://downloads.cloudmade.com"
if( url.exists(baseURI) ) {
  htmlDump <- getURL("http://downloads.cloudmade.com")
  selectmap <- regexpr("select_map+",htmlDump)
  slashUL <- gregexpr("</ul>+",htmlDump)
  matchUL <- which(slashDiv[[1]] > selectmap[[1]])
  listFolders <- substr(htmlDump,selectmap[[1]],slashUL[[1]][matchUL])
  folders <-  gregexpr("(class=\"folder\">+)",listFolders)
  # add end link
  # add start url
  # lapply through folders
}
  
