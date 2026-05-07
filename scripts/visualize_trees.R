# Tree Visualization
# Using ggtree to compare MAFFT and MUSCLE trees


# Install packages if needed 
# BiocManager::install(c("treeio", "ggtree", "tidytree"))
# install.packages(c("ape", "phytools", "phangorn", "ggplot2", "patchwork"))

library(treeio)
library(ggtree)
library(ape)
library(phytools)
library(phangorn)
library(ggplot2)
library(patchwork)

# 
# Read trees
# 
mafft_tree <- read.tree("~/myProject/results/iqtree_mafft/mafft_tree.contree")
muscle_tree <- read.tree("~/myProject/results/iqtree_muscle/muscle_tree.contree")

# 
# Check rooting
#
plot(mafft_tree)
nodelabels()

plot(muscle_tree)
nodelabels()
