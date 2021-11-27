## Load packages
library("rrcov")
library("DESeq2")

## Create variables for data paths
file1 = "../deseq2_data/male_counts.csv"
file2 = "../deseq2_data/male_metadata.txt"

## Create variable for counts matrix
cts <-  as.matrix(read.csv(file1 ,sep=",",row.names="Geneid"))

## Create metadata variable 
coldata <- read.csv(file2, sep="\t", row.names="Sample")
coldata$condition <- factor(coldata$condition)

## Unite metadata and counts into deseq object
dds <- DESeqDataSetFromMatrix(countData = cts,
                              colData = coldata,
                              design = ~ condition)
## Show deseq object
dds

## Show 5 lines of deseq object
head(assay(dds), 5)

## Only keep genes with atleast 10 summed counts across all samples.
keep <- rowSums(counts(dds)) >= 10
dds <- dds[keep,]

## Include condition names on deseq object
dds$condition <- factor(dds$condition, levels = c('untreated', 'treated'))

## Generate deseq normalization
dds <- DESeq(dds)

## Log transform values
rld <- rlog(dds, blind=FALSE)

## Create variable with counts for log transformation
rld_pca <- assay(rld)
head(rld_pca, 3)

## Transpose matrix.
rld_final <- as.data.frame(t(rld_pca))

## Set graph size
par(mar=c(1,1,1,1))

## PcaGrid analysis with top 2 PCs
pca <- PcaGrid(rld_final, k=2)

## Plot the graph
plot(pca, main="Robust PCA Female Samples \n")
