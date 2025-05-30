% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_poverty_measures.R
\name{plot_poverty_measures}
\alias{plot_poverty_measures}
\title{Plot Poverty Measures by Group}
\usage{
plot_poverty_measures(
  result,
  indicator = "headcount",
  save = FALSE,
  filename = "poverty_plot.png"
)
}
\arguments{
\item{result}{A \code{data.frame} returned by the \code{poverty_measures()} function. It must contain the columns \code{poverty_headcount}, \code{poverty_gap}, or \code{poverty_severity}.}

\item{indicator}{A character string indicating the poverty indicator to plot. Valid options are \code{"headcount"}, \code{"gap"}, or \code{"severity"}.}

\item{save}{Logical. If \code{TRUE}, the plot is saved as a PNG image. Default is \code{FALSE}.}

\item{filename}{Character. The name of the file to save the plot if \code{save = TRUE}. Default is \code{"poverty_plot.png"}.}
}
\value{
A \code{ggplot} object representing the selected poverty measure by group. The function also prints the plot to the viewer.
}
\description{
This function generates a horizontal barplot of poverty indicators—\strong{headcount ratio}, \strong{poverty gap}, or \strong{poverty severity}—
using the output of the \code{poverty_measures()} function. It displays the values on the bars and optionally saves the plot to a PNG file.
}
\details{
The first column of \code{result} is assumed to be the grouping variable (e.g. region, gender, etc.).
The function automatically removes the row labeled \code{"Total"} before plotting, if present.
}
