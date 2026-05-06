#!/usr/bin/env python3
import os
import sys
from Bio import SeqIO
from Bio.SeqRecord import SeqRecord
from Bio.Seq import Seq

input_dir = sys.argv[1]
output_dir = sys.argv[2]

for nexus_file in os.listdir(input_dir):
    if nexus_file.endswith('.nexus'):
        records = []
        for record in SeqIO.parse(os.path.join(input_dir, nexus_file), 'nexus'):
            # Strip gaps and missing data
            clean_seq = str(record.seq).replace('-', '').replace('?', '')
            records.append(SeqRecord(seq=Seq(clean_seq), id=record.id, description=''))
        
        out_file = nexus_file.replace('.nexus', '.fasta')
        SeqIO.write(records, os.path.join(output_dir, out_file), 'fasta')
        print(f"Converted {nexus_file}")

print("Done!")
