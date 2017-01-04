Genome <- c("hg18", "hg19", "hg38", "mm9", "mm10", "rn5", "rn6", "danRer10",
            "dm6")
SourceVersion <- c("2006-02-07", "2009-06-12", "2014-06-11", "2007-08-15",
                   "2012-10-19", "2013-06-18", "2014-07-14", "2015-01-22",
                   "2014-12-03")
Species <- c(rep("Homo sapiens", 3), rep("Mus musculus", 2),
             rep("Rattus norvegicus", 2), "Danio rerio",
             "Drosophila melanogaster")
TaxonomyId <- c(rep("9606", 3), rep("10090", 2), rep("10116", 2L),
                "7955", "7227")

Title <- paste("UCSC cytoBand track for", Genome)
Description <- paste("Approximate location of bands seen on Giemsa-stained",
                     "chromosomes, on ", Genome, "coordinates")
BiocVersion <- "3.4"
SourceType <- "UCSC track"
SourceUrl <- paste0("http://hgdownload.cse.ucsc.edu/goldenpath/",
                    Genome, "/database/cytoBandIdeo.txt.gz")
Coordinate_1_based <- TRUE # after import anyway
DataProvider <- "UCSC"
Maintainer <- "Michael Lawrence <michafla@gene.com>"
RDataClass <- "GRanges"
DispatchClass <- "RDS"
ResourceName <- paste0("cytoBand.", Genome, ".rds")
Tags <- "cytoBand"

meta <- data.frame(Title,
                   Description,
                   BiocVersion,
                   Genome,
                   SourceType,
                   SourceUrl,
                   SourceVersion,
                   Species,
                   TaxonomyId,
                   Coordinate_1_based,
                   DataProvider,
                   Maintainer,
                   RDataClass,
                   DispatchClass,
                   ResourceName,
                   Tags)

write.csv(meta, file="../extdata/metadata.csv", row.names=FALSE)
