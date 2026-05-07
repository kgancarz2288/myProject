#!/bin/bash

# Turtle Phylogenomics Pipeline
# Crawford et al. (2015) 


# SETUP INSTRUCTIONS:

# 1. Download data from Dryad 
#    https://datadryad.org/dataset/doi:10.5061/dryad.t77q4
#    Extract to: /mnt/c/Users/kg22/Desktop/Phylogeny_Project/Phylogeny_data/
#
# 2. Software required (install via conda):
#    conda create -n biotools -c bioconda -c conda-forge mafft muscle iqtree python biopython
#    conda activate biotools
#
# 3. Software versions used:
#    - MAFFT v7.525
#    - MUSCLE v5.x
#    - IQ-TREE v3.1.1
#    - Python 3.x with Biopython
#    - R with ggtree, ape, phytools, phangorn, ggplot2
#
# 4. Clone this repository:
#    git clone https://github.com/kgancarz2288/myProject




DATA=/mnt/c/Users/kg22/Desktop/Phylogeny_Project/Phylogeny_Data/doi_10_5061_dryad_t77q4__v20151016/complete_dataset2_mafft-nexus/complete_dataset2_mafft-nexus
OUTDIR=~/myProject/data

# Create output directories
mkdir -p $OUTDIR/unaligned
mkdir -p $OUTDIR/mafft
mkdir -p $OUTDIR/muscle



# STEP 1: Convert nexus to fasta and strip gaps


python3 ~/myProject/scripts/nexus_to_fasta.py $DATA $OUTDIR/unaligned


# STEP 2: Multiple Sequence Alignment

# Run MAFFT
# Run MUSCLE


#Step 3: Concatenation 


#Step 4: Phylogenetic Inference

#IQ-TREE Inference (1000 boostraps)
#RAxML-NG Inference (500 bootstraps)


