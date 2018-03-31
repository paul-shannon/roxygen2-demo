docs:
	R -e "devtools::document()"
vig:
	R -e "devtools::build_vignettes()"

build:
	(cd ..; R CMD build roxygen2-demo)

install:
	(cd ..; R CMD INSTALL roxygen2-demo)

check:
	(cd ..; R CMD check `ls -t roxygen2Demo_* | head -1`)
