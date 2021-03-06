% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/woebin.R
\name{woebin_plot}
\alias{woebin_plot}
\title{WOE Binning Visualization}
\usage{
woebin_plot(bins, x = NULL, title = NULL, show_iv = TRUE)
}
\arguments{
\item{bins}{A list or data frame. Binning information generated by \code{woebin}.}

\item{x}{Name of x variables. Default is NULL. If x is NULL, then all variables except y are counted as x variables.}

\item{title}{String added to the plot title. Default is NULL.}

\item{show_iv}{Logical. Default is TRUE, which means show information value in the plot title.}
}
\value{
List of binning plot
}
\description{
\code{woebin_plot} create plots of count distribution and bad probability for each bin. The binning informations are generates by  \code{woebin}.
}
\examples{
# Load German credit data
data(germancredit)

# Example I
dt1 = germancredit[, c("creditability", "credit.amount")]

bins1 = woebin(dt1, y="creditability")
p1 = woebin_plot(bins1)

\dontrun{
# Example II
bins = woebin(germancredit, y="creditability")
plotlist = woebin_plot(bins)

# # save binning plot
# for (i in 1:length(plotlist)) {
#   ggplot2::ggsave(
#      paste0(names(plotlist[i]), ".png"), plotlist[[i]],
#      width = 15, height = 9, units="cm" )
#   }
}

}
\seealso{
\code{\link{woebin}}, \code{\link{woebin_ply}}, \code{\link{woebin_adj}}
}
