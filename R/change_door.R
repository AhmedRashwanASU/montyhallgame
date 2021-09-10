#' @title
#'   Contestant given the chance to switch their first pick initial door.
#' @description
#'   change_door is a function that shows the contestant's strategy of
#'   switching or keeping their door
#' @details
#'   After a goat door is revealed the only the door initially selected and the other
#'   closed door remain. The contestant will have the opportunity to keep their
#'   initial door or change their door of choice .
#' @param
#'   The function uses the strategy used as an argument stay = TRUE
#'   or stay = FALSE. It takes into account the door revealed by the
#'   host, opened.door, and the initial door, a.pick.
#' @return
#'   The function returns a number between 1 and 3.
#' @examples
#'   change_door(stay = TRUE, opened.door, a.pick)
#' @export
   change_door <- function( stay=T, opened.door, a.pick )
  {
  doors <- c(1,2,3)

  if( stay )
  {
    final.pick <- a.pick
  }
  if( ! stay )
  {
    final.pick <- doors[ doors != opened.door & doors != a.pick ]
  }

  return( final.pick )  # number between 1 and 3
  }
