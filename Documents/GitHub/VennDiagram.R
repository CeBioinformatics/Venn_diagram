# Set seed for reproducibility
set.seed(20240902)

# Create a vector of genes from "gene1" to "gene1000"
genes <- paste("gene", 1:1000, sep = "")

# Create a list of gene sets
x <- list(
  Heart = sample(genes, 250),
  Liver = sample(genes, 500),  
  Brain = sample(genes, 400),
  Kidney = sample(genes, 375)
)

# Install and load the ggvenn library
if (!requireNamespace("ggvenn", quietly = TRUE)) {
  install.packages("ggvenn")
}
library(ggvenn)

# Create the Venn diagram
ggvenn(
  x,
  fill_color = c("blue", "red", "green", "yellow"),
  stroke_size = 0.5,
  set_name_size = 4
)

