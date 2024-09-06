# Establecer la semilla
set.seed(20240902)

# Crear un vector de genes de "gene1" a "gene1000"
genes <- paste("gene", 1:1000, sep = "")

# Crear una lista de vectores
x <- list(
  Corazon = sample(genes, 250),
  Higado = sample(genes, 500),  
  Cerebro = sample(genes, 400),
  Riñon = sample(genes, 375)
)

# Instalar y cargar la librería ggvenn
if (!requireNamespace("ggvenn", quietly = TRUE)) {
  install.packages("ggvenn")
}
library(ggvenn)

# Crear el diagrama de Venn
ggvenn(
  x,
  fill_color = c("blue", "red", "green", "yellow"),
  stroke_size = 0.5,
  set_name_size = 4
)

