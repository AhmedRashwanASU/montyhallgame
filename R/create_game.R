#' @title
#'   Create a new Monty Hall Problem game.
#' @description
#'   create_game() generates a new game that consists of two doors
#'   with goats behind them, and one with a car.
#' @details
#'   The game setup replicates the game on the TV show "Let's
#'   Make a Deal" where there are three doors for a contestant
#'   to choose from, one of which has a car behind it and two
#'   have goats. The contestant selects a door, then the host
#'   opens a door to reveal a goat, and then the contestant is
#'   given an opportunity to stay with their original selection
#'   or switch to the other unopened door. There was a famous
#'   debate about whether it was optimal to stay or switch when
#'   given the option to switch, so this simulation was created
#'   to test both strategies.
#' @param ... no arguments are used by the function.
#' @return The function returns a length 3 character vector
#'   indicating the positions of goats and the car.
#' @examples
#'   create_game()
#' @export
   create_game <- function()
{
  a.game <- sample( x=c("goat","goat","car"), size=3, replace=F )
  return( a.game )
}

