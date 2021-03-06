% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Get_ZHVI_series.R
\name{get_ZHVI_series}
\alias{get_ZHVI_series}
\title{Get Zillow Home Value Index time series data}
\usage{
get_ZHVI_series(bedrooms = 1, geography = "Metro", allhomes = F,
  tier = "ALL", summary = F, other = NULL)
}
\arguments{
\item{bedrooms}{a numeric value specifying the number of bedrooms. If not needed, leave at the default (1)}

\item{geography}{(required) string specifying the desired geographic region to summarise. Choices are 'Metro', 'City', 'State', 'Neighborhood', 'Zip', and 'County'.}

\item{allhomes}{logical, set to \code{TRUE} If you do not want a specific # of bedrooms or type of home}

\item{tier}{one of 'ALL','T' (for top), 'B' (for bottom), or 'M' (for median)}

\item{summary}{logical, if \code{TRUE}, the ZHVI summary for all homes is returned}

\item{other}{Other possible options from the Zillow home data series. Default is \code{NULL}. Possible options are strings "Median Home Price Per Sq Ft", and "Increasing" or "Decreasing"}
}
\value{
A tibble. Columns returned correspond to geographic identification information and dates for which the time series observations are available.
}
\description{
Reads the static .csv file for Zillow Home Values series by type and geography,
building a URL path to the .csv file. Options are available for a variety of home sizes and types,
as well as tiers if you wish to view other data that is aggregated.
}
\examples{
#All homes, bottom tier, by zipcode
\dontrun{get_ZHVI_series(allhomes=TRUE, tier="B",geography="Zip")}

#2 bedrooms by city
\dontrun{get_ZHVI_series(bedrooms=2,geography="City") }

#the ZHVI summary for all homes by State
\dontrun{get_ZHVI_series(geography="State", summary=TRUE) }


}
