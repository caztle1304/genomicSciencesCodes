
'''NAME
       alignment_cov_cov_2.py
VERSION
        1.0
AUTHORS
        	Alfredo Varela <avarela@lcg.unam.mx>
		Andrea Gpe. Domínguez Monzalvo <andreadm@lcg.unam.mx>
		Angel Adrián De la Cruz Castillo <angeldc@lcg.unam.mx>
		
DESCRIPTION
		Program that aligns spike (S) glicoprotein type I sequences from SARS-CoV-2 y SARS-CoV and captures the overlapping aminoacids with the ACE2 (Angotensin Converting Enzyme 2 )
		Overlapping aminoacids: 
		SARS-CoV: Y442, L472, N479, D480, T487, Y491. Y los que hacen contacto con SARS-CoV-2: L455, F486, Q493, S494, N501 and Y505
USAGE
        python3 alignment_cov_cov_2.py
        clustalo -i /home/alfredo/LCGpython/results/gp_sars_cov_1_2.fasta -o /home/alfredo/LCGpython/results/gp_sars_cov_1_2_aligned --auto -v
ARGUMENTS
		None
'''
import Bio 
import subprocess
from Bio import AlignIO
from Bio import SeqIO
from Bio.Align import MultipleSeqAlignment
from Bio.Align.Applications import ClustalOmegaCommandline


output_1 = open("/home/alfredo/LCGpython/results/gp_sars_cov_1_2.fasta","w")

# Merging SARS-Cov and SARS-CoV-2 fastas into a single file for alignment
with open("/home/alfredo/LCGpython/data/gp_sars_cov.fasta","r") as handle:
	record_1 = SeqIO.parse(handle, "fasta")
	Bio.SeqIO.write(record_1, output_1, "fasta")

with open("/home/alfredo/LCGpython/data/gp_sars_cov_2.fasta","r") as handle_2:
	record_2 = SeqIO.parse(handle_2,"fasta")
	Bio.SeqIO.write(record_2, output_1, "fasta")
output_1.close()

# Creating the alignment file with Clustal Omega 
in_file = "/home/alfredo/LCGpython/results/gp_sars_cov_1_2.fasta"
out_file = "/home/alfredo/LCGpython/results/gp_sars_cov_1_2_aligned"
clustalomega_cline = ClustalOmegaCommandline(infile= in_file , outfile= out_file, verbose=True, auto=True)

# Executing in the shell the clustal alignment
subprocess.run(["clustalo -i /home/alfredo/LCGpython/results/gp_sars_cov_1_2.fasta -o /home/alfredo/LCGpython/results/gp_sars_cov_1_2_aligned --auto -v"],shell=True)

# Creating a MultipleSeqAlignment object with clustal aligned file and finding the overlapping aminoacids. 
align = AlignIO.read("/home/alfredo/LCGpython/results/gp_sars_cov_1_2_aligned","fasta")
print(align[:,440:512])