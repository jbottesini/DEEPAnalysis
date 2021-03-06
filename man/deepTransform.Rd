% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform_basefns.R
\name{deepTransform}
\alias{deepTransform}
\title{Transforms JSON DEEP output into a readable dataframe}
\usage{
deepTransform(DEEPtype, WD = getwd(), file_path, filter_by = NULL,
  collaborate = FALSE)
}
\arguments{
\item{DEEPtype}{character string that specifies whether output is DEEP "risk" or "time".}

\item{WD}{allows the user to specify a working directory. Uses the current directory if no directory is specified.}

\item{file_path}{contains the file path to the Limesurvey/Qualtrics output.}

\item{filter_by}{specifies the name/identifier of the question you want to isolate for analysis. 
This parameter is used to analyze a dataset that contains multiple DEEP outputs but is optional 
when analyzing a single DEEP output.}
}
\value{
a dataframe containing the parsed JSON with the Participant responses

a CSV is exported with the unshrunken parameter estimates
}
\description{
\code{deepTransform} Reads the filetype of the Qualtrics/Limesurvey output and parses
the JSON into a dataframe. Depending on the DEEP type, it sends it to the function \code{deepSplit}
to create the inputs for the Hierarchical Bayes. If a specific survey question has been specified, 
it only transforms that part of the dataset.
}
\examples{
\dontrun{
deepTransform(DEEPtype = "risk", file_path = "/Documents/output.xml")
deepTransform(DEEPtype = "time", file_path = "/Documents/output.xml", filter_by = "myDEEPtimeQuestion")
}

}
