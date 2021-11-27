
library("DESeq2")
library(ggplot2)

file1 = "../deseq2_data/male_counts.csv"
file2 = "../deseq2_data/male_metadata_no_outlier.txt"

cts <-  as.matrix(read.csv(file1 ,sep=",",row.names="Geneid"))

head(cts, 3)

cts <- cts[,-2]

head(cts, 3)

coldata <- read.csv(file2, sep="\t", row.names="Sample")

head(coldata,20)
coldata$condition <- factor(coldata$condition)

head(coldata)

dds <- DESeqDataSetFromMatrix(countData = cts,
                              colData = coldata,
                              design = ~ condition)

dds

keep <- rowSums(counts(dds)) >= 10
dds <- dds[keep,]

dds$condition <- factor(dds$condition, levels = c('untreated', 'treated'))

dds <- DESeq(dds)
res <- results(dds)
res




library("BiocParallel")
register(MulticoreParam(6))

resOrdered <- res[order(res$pvalue),]

summary(res)

sum(res$padj < 0.1, na.rm=TRUE)

res05 <- results(dds, alpha=0.05)
summary(res05)


sum(res05$padj < 0.05, na.rm=TRUE)

res

write.csv(res, "../final_results/male_count_results_no_out.csv", row.names = TRUE)

res_ordered <- res[order(res$padj),]
head(res_ordered)

#reset par
par(mfrow=c(1,1))
# Make a basic volcano plot
with(res, plot(log2FoldChange, -log10(pvalue), pch=20, main="Volcano plot Male CT vs Male ELS",
               xlim=c(-3,3), ylim=c(0,15)))

# Add colored points: blue if padj<0.01, red if log2FC>0.8 and padj<0.1)
with(subset(res, padj<0.1 ), points(log2FoldChange, -log10(pvalue), pch=20, col="blue"))
with(subset(res, padj<0.1 & abs(log2FoldChange)>0.8), points(log2FoldChange, -log10(pvalue), pch=20, col="red"))


#First we need to transform the raw count data
#vst function will perform variance stabilizing transformation

vsdata <- vst(dds, blind=FALSE)
plotPCA(vsdata, intgroup="condition") #using the DESEQ2 plotPCA fxn we can


