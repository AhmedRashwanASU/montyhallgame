#' @title
#'   Host reveals a goat door to the contestant.
#' @description
#'   open_goat_door is a function that reveals a door that contains a goat.
#' @details
#'   The host will open a door with a goat. If the initial door selected
#'   is a car either remaining goat will be opened at random. If a goat
#'   door is initially selected the door the host will reveal the remaining
#'   goat door.
#' @param
#'   his function uses the return value, a.pick, from select_door function
#' @return
#'   The function returns a number between 1 and 3.
#' @examples
#'   open_goat_door(game, a.pick)
#' @export
   open_goat_door <- function( game, a.pick )
{
  doors <- c(1,2,3)
  # if contestant selected car,
  # randomly select one of two goats
  if( game[ a.pick ] == "car" )
  {
    goat.doors <- doors[ game != "car" ]
    opened.door <- sample( goat.doors, size=1 )
  }
  if( game[ a.pick ] == "goat" )
  {
    opened.door <- doors[ game != "car" & doors != a.pick ]
  }
  return( opened.door ) # number between 1 and 3
}
