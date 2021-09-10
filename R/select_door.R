#' @title
#'   Contestant selects a door
#' @description
#'   select_door is a function that select a door at random
#' @details
#'   The game consists of three doors and the contestant selects
#'   their initial door.
#' @param
#'   No arguments are used by the function
#' @return
#'   The function returns a number between 1 and 3.
#' @examples
#'   select_door()
#' @export
   select_door <- function( )
{
  doors <- c(1,2,3)
  a.pick <- sample( doors, size=1 )
  return( a.pick )  # number between 1 and 3
}
