library(roxygen2Demo)
library(RUnit)
printf <- function(...) print(noquote(sprintf(...)))
#------------------------------------------------------------------------------------------------------------------------
runTests <- function()
{
   test_ctor()

} # runTests
#------------------------------------------------------------------------------------------------------------------------
test_ctor = function ()
{
  printf("--- test_ctor")

  name <- "paul"
  count <- 42
  base <- Base(name, count)

  checkEquals(getName(base), name)
  checkEquals(getCount(base), count)

} # test_ctor
#------------------------------------------------------------------------------------------------------------------------
