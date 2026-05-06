#!/bin/bash

# Turtle Phylogenomics Pipeline
# Crawford et al. (2015) 


DATA=/mnt/c/Users/kg22/Desktop/Phylogeny_Project/Phylogeny_Data/doi_10_5061_dryad_t77q4__v20151016/complete_dataset2_mafft-nexus/complete_dataset2_mafft-nexus
OUTDIR=~/myProject/data

# Create output directories
mkdir -p $OUTDIR/unaligned
mkdir -p $OUTDIR/mafft
mkdir -p $OUTDIR/muscle



# STEP 1: Convert nexus to fasta and strip gaps


python3 ~/myProject/scripts/nexus_to_fasta.py $DATA $OUTDIR/unaligned

