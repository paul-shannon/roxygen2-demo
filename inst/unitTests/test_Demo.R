library(roxygen2Demo)
library(RUnit)
printf <- function(...) print(noquote(sprintf(...)))
#------------------------------------------------------------------------------------------------------------------------
runTests <- function()
{
   test_BaseClass()
   test_DerivedClass()

} # runTests
#------------------------------------------------------------------------------------------------------------------------
test_BaseClass = function ()
{
  printf("--- test_BaseClass")

  name <- "paul"
  count <- 42
  base <- Base(name, count)

  checkEquals(getName(base), name)
  checkEquals(getCount(base), count)

} # test_BaseClass
#------------------------------------------------------------------------------------------------------------------------
test_DerivedClass = function ()
{
  printf("--- test_DerivedClass")

  name <- "paul"
  count <- 42
  height <- 65

  derived <- Derived(name, count, height)

  checkEquals(getName(derived), name)
  checkEquals(getCount(derived), count)
  checkEquals(getHeight(derived), height)

} # test_DerivedClass
#------------------------------------------------------------------------------------------------------------------------
