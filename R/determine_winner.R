#' @title
#'   Determine whether contestant is a winner.
#' @description
#'   determine_winner is a function that reveal whether the contestant's
#'   door is winner; a car behind it.
#' @details
#'   The contestant's door is revealed and it will be known whether the door
#'   had a goat or a car behind it.
#' @param
#'   The function takes into account the final.pick and the game.
#' @return
#'   The function returns "WIN" or "LOSE"
#' @examples
#'   determine_winner(final.pick, game)
#' @export
   determine_winner <- function( final.pick, game )
{
  if( game[ final.pick ] == "car" )
  {
    return( "WIN" )
  }
  if( game[ final.pick ] == "goat" )
  {
    return( "LOSE" )
  }
}
