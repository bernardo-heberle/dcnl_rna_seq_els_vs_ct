## Carregar Pacotes
library("rrcov")
library("DESeq2")

## Carregar Arquivos
file1 = "../deseq2_data/female_counts.csv"
file2 = "../deseq2_data/female_metadata.txt"

## Criar variavel para guardar matriz de contagens do rna-seq
cts <-  as.matrix(read.csv(file1 ,sep=",",row.names="Geneid"))

## Criar variavel para guardar metadata da matriz de contagem do RNA-seq
coldata <- read.csv(file2, sep="\t", row.names="Sample")
coldata$condition <- factor(coldata$condition)

## Unir metadata e matriz em um objeto deseq2
dds <- DESeqDataSetFromMatrix(countData = cts,
                              colData = coldata,
                              design = ~ condition)
## Mostrar a variavel criada pelo deseq
dds

## Mostrar as 5 primeiras linhas da matriz de contagens
head(assay(dds), 5)

## Manter somente os genes com pelo menos 10 contagens totais entre todas amostras
keep <- rowSums(counts(dds)) >= 10
dds <- dds[keep,]

## Incluir nomes das condições no objecto do deseq
dds$condition <- factor(dds$condition, levels = c('untreated', 'treated'))

## Sei lá o que isso faz, mas tava no tutorial
dds <- DESeq(dds)

## Transformar valores das constagens com normalização logarítimica
rld <- rlog(dds, blind=FALSE)

## Criar variavel com as contagens em transformação logaritimica
rld_pca <- assay(rld)
head(rld_pca, 3)

## Tranformar colunas em fileiras e vice-versa (necessário pra fazer o plot)
rld_final <- as.data.frame(t(rld_pca))

## Deixar o gráfivo vom um tamanho bom
par(mar=c(1,1,1,1))

## Usar a função do PcaGrid pra criar o gráfico de outliers
#pca <- PcaGrid(rld_final)

## Alternativamente pode-se usar, levando em consideração somento os dois primeiros PCs
pca <- PcaGrid(rld_final, k=2)

## Plottar o gráfico
plot(pca, main="Robust PCA Female Samples \n")

