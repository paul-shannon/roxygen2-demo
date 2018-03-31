# roxygen2-demo
explore use of ROxygen2 documentation with abstract base class,
derived concrete class

 - Build man pages: ````R -e "devtools::document"````
 - Build vignettes into inst/doc/ ````R -e "devtools::build_vignettes"````
 - ````cd ..````
 - ````R CMD build roxygen2-demo````
 - ````R CMD check roxygen2Demo_0.99.5.tar.gz````
