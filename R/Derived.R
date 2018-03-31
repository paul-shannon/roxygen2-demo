#' Class Derived
#'
#' @include Base.R
#'
#' @name Derived-class
#' @rdname Derived-class
#' @exportClass Derived
#' @slot height a length-one numeric vector
#'
.Derived <- setClass ("Derived",
                                contains="Base",
                      slots = c(height="numeric")
                      )
#----------------------------------------------------------------------------------------------------
setGeneric('getHeight',  signature='obj', function (obj) standardGeneric ('getHeight'))
#----------------------------------------------------------------------------------------------------
#' Constructor for Derived
#'
#' @name Derived
#' @rdname Derived-class
#'
#' @param name a length-one character vector
#' @param count a length-one numeric vector
#' @param height a length-one numeric vector
#'
#' @return an object of class Derived
#'
#' @export

Derived <- function(name, count, height)
{
   obj <- .Derived(Base(name=name, count=count), height=height)

   obj

} # Derived
#----------------------------------------------------------------------------------------------------
#' Retrieve the height of the object
#'
#' @rdname getHeight
#' @aliases getHeight
#'
#' @param obj An object of class Base
#'
#' @return The height of the Base object
#'
#' @examples
#' # Create a Derived object
#' derived.01 <- Derived(name="paul", count=42, height=65)
#' getHeight(derived.01)
#'
#' @export
#'
setMethod("getHeight", "Derived",

    function(obj){
       obj@height
       })

#----------------------------------------------------------------------------------------------------
