% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NVT-init.R
\name{NVTinit}
\alias{NVTinit}
\title{Initialize and load input data into a NVTobject}
\usage{
NVTinit(housekeeping_gene_list, expression_list_1, expression_list_2,
  normalization_method, feat_length)
}
\arguments{
\item{housekeeping_gene_list}{A list of housekeeping-genes}

\item{expression_list_1}{The first data frame of expression values per gene}

\item{expression_list_2}{Second data frame of expression values per gene}

\item{normalization_method}{The normalization method to use [N,TC,Med,TMM,UQ,UQ2,Q,RPKM,RPM,DEQ,TPM,G] N = No normalization, TC = Total count normalization, Med = Median normalization, TMM = Trimmed Mean of M-values normalization, UQ = Upper Quartile normalization , UQ2 = Upper Quartile normalization (from NOISeq), Q = Quantile normalization, RPKM = Reads Per Kilobase per Million mapped reads normalization, RPM = Reads per Million mapped reads normalization, DEQ = relative log expression method included in the DESeq package, TPM = transcripts per million normalization, G = use the provided genes to normalize}

\item{feat_length}{A data frame of length per gene/exon}
}
\value{
An NVTobject ready for normalization
}
\description{
Initialize and load input data into a NVTobject
}
\examples{
library("NVT")
data(myexp1)
data(myexp2)
data(mylen)
mylist1<-c("ENSG00000111640","ENSG00000163631","ENSG00000075624","ENSG00000172053",
"ENSG00000170950","ENSG00000165704","ENSG00000196839","ENSG00000168938","ENSG00000177700")

mynvt <- NVTinit(mylist1,myexp1,myexp2,"N")
mynvt2 <- NVTinit(mylist1,myexp1,myexp2,"RPKM",mylen)
}

