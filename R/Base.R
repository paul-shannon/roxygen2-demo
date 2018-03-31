#' @importFrom methods new
#' @import BiocGenerics
#'
#' @name Base-class
#' @rdname Base-class
#' @exportClass Base
#' @slot name a length-one character vector
#' @slot count integer a length-one numeric vector
#'
.Base <- setClass ("Base",
                   slots = list(name="character",
                                count="numeric"))
#----------------------------------------------------------------------------------------------------
setGeneric('getName', signature='obj', function (obj) standardGeneric ('getName'))
setGeneric('getCount', signature='obj', function (obj) standardGeneric ('getCount'))
#----------------------------------------------------------------------------------------------------
#' Constructor for Base
#'
#' @name Base
#' @rdname Base-class
#'
#' @references \url{https://en.wikipedia.org/wiki/Abstract_type}
#' @references \url{http://adv-r.had.co.nz/S4.html}
#'
#' @param name A length-one character vector, for instance, 'paul', 'amy'
#' @param count A length-one numeric vector
#' @return An object of class Base
#'
#' @export
#'
Base <- function(name, count)
{
   obj <- .Base(name=name, count=count)

   obj

} # Base
#----------------------------------------------------------------------------------------------------
#' Retrieve the name of the object
#'
#' @rdname getName
#' @aliases getName
#'
#' @param obj An object of class Base
#'
#' @return The name of the Base object
#'
#' @examples
#' # Create a Base object
#' base.01 <- Base(name="paul", count=42)
#' getName(base.01)
#'
#' @export

setMethod("getName", "Base",

    function(obj){
       obj@name
       })

#----------------------------------------------------------------------------------------------------
#' Retrieve the object's current count
#'
#' @rdname getCount
#' @aliases getCount
#'
#' @param obj An object of class Base
#'
#' @return The current count of the Base object
#'
#' @examples
#' # Create a Base object
#' base.01 <- Base(name="paul", count=42)
#' getCount(base.01)
#'
#' @export
#'
setMethod("getCount", "Base",

    function(obj){
       obj@count
       })

#----------------------------------------------------------------------------------------------------
