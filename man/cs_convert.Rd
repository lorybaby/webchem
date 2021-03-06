% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chemspider.R
\name{cs_convert}
\alias{cs_convert}
\title{Convert identifiers using ChemSpider}
\usage{
cs_convert(query, from = c("csid", "inchikey", "inchi", "smiles"),
  to = c("csid", "inchikey", "inchi", "smiles", "mol"), verbose = TRUE,
  token = NULL, ...)
}
\arguments{
\item{query}{character; query ID.}

\item{from}{character; type of query ID.}

\item{to}{character; type to convert to.}

\item{verbose}{logical; should a verbose output be printed on the console?}

\item{token}{character; security token. Converting from csid to mol requires a token.}

\item{...}{futher arguments passed. Currently onl \code{parse}, see also \code{\link{cs_csid_mol}}}
}
\value{
Depends on to. if \code{to = 'mol'} then an RMol-Object, else a character string.
}
\description{
Convert identifiers using ChemSpider
}
\note{
A security token is neeeded for conversion to mol. Please register at RSC
\url{https://www.rsc.org/rsc-id/register} for a security token.
}
\examples{
\donttest{
# might fail if API is not available
cs_convert('BQJCRHHNABKAKU-KBQPJGBKSA-N', from = 'inchikey', to = 'csid')
cs_convert(c('BQJCRHHNABKAKU-KBQPJGBKSA-N', 'BQJCRHHNABKAKU-KBQPJGBKSA-N'),
    from = 'inchikey', to = 'csid')
cs_convert('BQJCRHHNABKAKU-KBQPJGBKSA-N', from = 'inchikey', to = 'inchi')
cs_convert('BQJCRHHNABKAKU-KBQPJGBKSA-N', from = 'inchikey', to = 'mol')
}
}
\seealso{
There are many low level functions underlying, which are exported from
the package. The naming scheme is cs_from_to() here's a list and links to their manual pages:
\itemize{
 \item \code{\link{cs_csid_mol}}
 \item \code{\link{cs_inchikey_csid}}
 \item \code{\link{cs_inchikey_inchi}}
 \item \code{\link{cs_inchikey_mol}}
 \item \code{\link{cs_inchi_csid}}
 \item \code{\link{cs_inchi_inchikey}}
 \item \code{\link{cs_inchi_mol}}
 \item \code{\link{cs_inchi_smiles}}
 \item \code{\link{cs_smiles_inchi}}
}
Check \code{\link{parse_mol}} for a description of the Mol R Object.
}
\author{
Eduard Szoecs, \email{eduardszoecs@gmail.com}
}
