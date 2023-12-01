
## Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

find_ratio <- function(RawIntDen, IntDen) {
  ratio <- RawIntDen/IntDen
  ratio
}
fig_ratio <- function(df, print=TRUE) {
  p <- plotly(df, aes(x=ratio, y=Area)) +
    geom_point()
  if(print) {
    print(p)
  }
  p
}

full_analysis <- function(RawIntDen, IntDen, print=TRUE) {
  ratio <- find_ratio(RawIntDen, IntDen)
  plot <- fig_ratio(df, print=print)
  ratio
}

