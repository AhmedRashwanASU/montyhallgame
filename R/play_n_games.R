#' @title
#'   Looping the game.
#' @description
#'   play_n_games() runs the game n number of times and gives you outcome
#' @details
#'   The game is simulated will allow users to run the game n number of times.
#'   This will allows is to test the average win rate by strategy and let us
#'   determine whcih strategy is dominant.
#' @param
#'   The function takes the number of games to be run. 100 is default
#' @return
#'   The function returns a data frame with average win rate by outcome and
#'   the results of each game by strategy.
#' @examples
#'   play_n_games(n=100)
#' @export
    play_n_games <- function( n=100 )
{

  library( dplyr )
  results.list <- list()   # collector
  loop.count <- 1

  for( i in 1:n )  # iterator
  {
    game.outcome <- play_game()
    results.list[[ loop.count ]] <- game.outcome
    loop.count <- loop.count + 1
  }

  results.df <- dplyr::bind_rows( results.list )

  table( results.df ) %>%
    prop.table( margin=1 ) %>%  # row proportions
    round( 2 ) %>%
    print()

  return( results.df )

}
