% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validate_clean_ballots.R
\name{validateBallots}
\alias{validateBallots}
\title{Validates Input Data Format for \code{stv()}.}
\usage{
validateBallots(x)
}
\arguments{
\item{x}{a \code{data.frame} with rows as ballots and columns as candidates.}
}
\value{
string: "All tests passed. Please feel free to run stv() function." if \code{x}
  passes all tests. Otherwise, a message corresponding to the problem is retunred. 
  NOTE: Some of the warnings can be fixed using \code{cleanBallots()} function. 
  Other issues must be fixed by the user.
}
\description{
The function \code{validateBallots} validates data format for \code{stv()} input.  
It assumes that each row corresponds to a ballot and each column corresponds to a 
candidate. If input data is in the correct format, \code{validateBallots} returns 
string: "All tests passed. Please feel free to run \code{stv()} function." 
Otherwise, it prints a message corresponding to the formatting error.
}
\details{
The \code{validateBallots} function should be run before \code{stv()} is called. 
Before any calculation, \code{stv()} calls this function and proceeds only 
if \code{x} passes all of the following tests.
\enumerate{
  \item If \code{x} is a \code{data.frame}.
  \item If \code{x} has unique column names.
  \item If \code{x} has numeric entries.
  \item If \code{x} doesn't have any blank columns.
  \item If \code{x} doesn't have any blank rows.
  \item If \code{x} doesn't have any rows with non-sequential ranks.
}
}
\examples{
data(ballots)
result <- try(validateBallots(ballots), silent=TRUE)
print(result)
}
