######################### DIFFERENTIAL GENE EXPRESSION ANALYSIS FEMALES CT VS ELS ##############################


# Import Libraries
library("DESeq2")
library(ggplot2)


# Set file paths
file1 = "../deseq2_data/female_counts.csv"
file2 = "../deseq2_data/female_metadata_no_outlier.txt"

# Create counts matrix
cts <-  as.matrix(read.csv(file1 ,sep=",",row.names="Geneid"))

# See elements in counts matrix 
head(cts, 3)

# Remove outlier samples (CT3F and CT5F)
cts <- cts[,-1]
cts <- cts[,-5]

# Check if correct samples were removed
head(cts, 3)

# Read metadata as column data
coldata <- read.csv(file2, sep="\t", row.names="Sample")

# Check if metadata is in correct order
head(coldata,22)
coldata$condition <- factor(coldata$condition)

# Create deseq object
dds <- DESeqDataSetFromMatrix(countData = cts,
                              colData = coldata,
                              design = ~ condition)
# See deseq object
dds

# Only keep genes with at least 10 reads across all samples
keep <- rowSums(counts(dds)) >= 10
dds <- dds[keep,]

# Factor conditions into analysis
dds$condition <- factor(dds$condition, levels = c('untreated', 'treated'))

# Generate results
dds <- DESeq(dds)
res <- results(dds)
res


# Order results using paralel processing
library("BiocParallel")
register(MulticoreParam(6))

resOrdered <- res[order(res$pvalue),]

summary(res)

sum(res$padj < 0.1, na.rm=TRUE)

res05 <- results(dds, alpha=0.05)
summary(res05)


sum(res05$padj < 0.05, na.rm=TRUE)

res


# Write final results to file
write.csv(res, "../final_results/female_count_results_no_out.csv", row.names = TRUE)

# See top hits
res_ordered <- res[order(res$padj),]
head(res_ordered)

# Set par
par(mfrow=c(1,1))

# Make a basic volcano plot
with(res, plot(log2FoldChange, -log10(pvalue), pch=20, main="Volcano plot Female CT vs Female ELS",
               xlim=c(-3,3), ylim=c(0,15)))

# Add colored points: blue if padj<0.1, red if log2FC>0.8 and padj<0.1)
with(subset(res, padj<0.1 ), points(log2FoldChange, -log10(pvalue), pch=20, col="blue"))
with(subset(res, padj<0.1 & abs(log2FoldChange)>0.8), points(log2FoldChange, -log10(pvalue), pch=20, col="red"))


#First we need to transform the raw count data
#vst function will perform variance stabilizing transformation 
vsdata <- vst(dds, blind=FALSE)
plotPCA(vsdata, intgroup="condition") # Deseq2 PCA plot

