'''NAME
        get_sRNA.py
VERSION
        1.0
AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>
DESCRIPTION
      This program extracts the small RNAs with no more than 300 bp from a txt file, 
      then it creates a new document with the gene name and the sequence
      and finally prints the gene name with its lenght 
CATEGORY
       Small RNA sequence purification
USAGE
        The user must have a file with the sequence, called Gene_Sequence.txt 
        in a directory called source at the same level of the file with the program,
         otherwise the program will not work
ARGUMENTS
  
'''
# Step1: Open source file
file = open("source/Gene_Sequence.txt", "r")
# Step2: Create a new fasta file where the purified RNAs will be written
newFile = open("source/sRNA_genes_Ecoli.fasta", "w+")

# Step3: Iterate each line from the source file

for line in file:

    #Step3.1: Ignore comments ad descriptions

    if line.startswith("#"):
        continue 

    # Step3.2: Create a list with the elements from each line that was not ignored

    newList = line.split("\t")


    strandData = newList[4] + " " + newList[5]



    #Step3.3: Ignore lines that are not sRNAs and with more than 300 bp

    if (strandData == ("forward small RNA") or strandData == ("reverse small RNA")) and len(newList[9]) < 300 :
        #Step3.4: Write in the new file the name of the gene and its sequence in fasta format

        newFile.write(">" + newList[1] + "\n" + newList[9] + "\n")
        #Step3.5: Print the name of the gene and its lenght
    
        print(newList[1] , len(newList[9]))

#Step 4: Close both, new and old files
    
newFile.close()
file.close()