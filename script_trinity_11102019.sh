#!/bin/bash
# Title: script_trinity_11102019.sh
# Purpose: De novo transcriptome assembly with Trinity
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 11.10.2019

# Beginning of the script
Trinity --seqType fq --samples_file metadata_trinity.txt --output 01_metadata_trinity_out_dir_11102019 --CPU 64 --max_memory 800G

# The end!
