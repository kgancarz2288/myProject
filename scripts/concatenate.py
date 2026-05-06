#!/usr/bin/env python3
from Bio import SeqIO
from Bio.Seq import Seq
from Bio.SeqRecord import SeqRecord
import os
import sys

input_dir = sys.argv[1]
output_file = sys.argv[2]

# Dictionary to store concatenated sequences per taxon
taxa_seqs = {}

for fasta_file in sorted(os.listdir(input_dir)):
    if fasta_file.endswith('.fasta'):
        records = list(SeqIO.parse(os.path.join(input_dir, fasta_file), 'fasta'))
        for record in records:
            # Get taxon name
            # Extract just the species name (remove uce-XXXX_ prefix)
            taxon = '_'.join(record.id.split('_')[1:])
            if taxon not in taxa_seqs:
                taxa_seqs[taxon] = ''
            taxa_seqs[taxon] += str(record.seq)

# Write concatenated alignment
output_records = []
for taxon, seq in taxa_seqs.items():
    output_records.append(SeqRecord(Seq(seq), id=taxon, description=''))

SeqIO.write(output_records, output_file, 'fasta')
print(f"Done! {len(output_records)} taxa written to {output_file}")
