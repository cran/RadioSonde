\name{ExampleSonde}
\alias{sonde1}
\alias{sonde2}
\title{Examples of radiosonde observations}

\description{
The  R data frames \code{sonde1} and \code{sonde2} are examples of  high
resolution (vertical) soundings of the atmosphere. The balloons were launched
on  July 4, 2015  02:59:33 and 04:59:23 (UTC) as part of the PECAN field study
lead by the National Center for Atmospheric Research
( see \url{https://www.eol.ucar.edu/field_projects/pecan}. Refer to the Data Access
tab on the PECAN home page to download the data collected during this study where "upper air"
indexes radiosonde observations. The interest in this
close spacing was to compare how the vertical structure of the atmosphere
changed at this location in the Northwest corner of Kansas
(-101.370712,39.357468)  over a short amount of time. 

These data frames contain the following named components:

\tabular{ll}{
         time   \tab Time in seconds from the ballon's release,
         a numeric vector. \cr
         press  \tab Pressure (mb), a numeric vector \cr
         temp   \tab Dry-bulb Temperature (deg. C), a numeric vector \cr
         dewpt  \tab Dew point temperaure (deg. C), a numeric vector \cr
         rh     \tab Relative humidity (\%), a numeric vector \cr
         uwind  \tab East-West component of the wind, a numeric vector \cr
         vwind  \tab North-South component of the wind, a numeric
         vector \cr
         wspd   \tab wind speed  (m/s), a numeric vector \cr
         dir    \tab Wind direction, a numeric vector \cr
         dz     \tab rate of ascent in m/s \cr
         lon    \tab Longitude, a numeric vector \cr
         lat    \tab Latitude, a numeric vector \cr
         az     \tab azimuth (angle along horizon), a numeric vector \cr
         alt    \tab altitude (m), a numeric vector \cr
         qp     \tab QC flag for pressure, a numeric vector \cr
         qt     \tab QC flag for temperature, a numeric vector \cr
         qh     \tab QC flag for humidity, a numeric vector \cr
         qu     \tab QC flag for U component, a numeric vector \cr
         qv     \tab QC flag for V component, a numeric vector \cr
         quv    \tab QC flag for ascension rate, a numeric vector \cr
    }
    
}

\details{
Raw ( ascii/text) data files are in the github RadioSonde R package repository
\url{https://github.com/dnychka/Radiosonde}.
along with the
R script  that converts to a data frame useful in R.
The NCAR/PECAN original
data
files are those ending in the extention \code{.eol} and are the standard format
for radiosonde profiles collected by this lab. Note that in this proccess the
original variable names were converted to those used in this package. E.g.
\code{Press} changes to \code{press}. Also the metadata units  that are in
the header of the original file is included as an \emph{attribute} in the R versions. 
}

\examples{

data(sonde1)

# look at the metadata
cat( attributes( sonde1)$metaData, fill=TRUE)

# and the units
cat( attributes( sonde1)$units, fill=TRUE)


skewtPlot( sonde1, winds=TRUE)

data(sonde2)
# skewt with wind barbs. 

skewtPlot( sonde1, sonde2, winds=TRUE)
}         
         
\keyword{datasets}
