#' @title
#'   Game results
#' @description
#'   The function play_game plays the created game and gives you the
#'   outcome of the game.
#' @details
#'   The function runs the game and gives the strategy and outcome in
#'   a data frame.
#' @param
#'   No arguments are used by the function.
#' @return
#'   The function returns a data frame showing the outcome by strategy.
#' @examples
#'   play_game()
#' @export
   play_game <- function( )
{
  new.game <- create_game()
  first.pick <- select_door()
  opened.door <- open_goat_door( new.game, first.pick )
  final.pick.stay <- change_door( stay=T, opened.door, first.pick )
  final.pick.switch <- change_door( stay=F, opened.door, first.pick )
  outcome.stay <- determine_winner( final.pick.stay, new.game  )
  outcome.switch <- determine_winner( final.pick.switch, new.game )
  strategy <- c("stay","switch")
  outcome <- c(outcome.stay,outcome.switch)
  game.results <- data.frame( strategy, outcome,
                              stringsAsFactors=F )
  return( game.results )
}


