'''NAME
        residueContent.py
VERSION
        3.0
AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>
DESCRIPTION
      This program counts the residue content from a protein sequence given by user.
CATEGORY
       Aminoacid content in protein sequences
USAGE
        $ python residueContent3.0.py inputFile.txt
ARGUMENTS
  
'''
def residueContent(sequence, residue):  
    '''
    The function will travel all lines in the source file, then it will eliminate all line jumps and get the aminoacid residue percentage in the given sequence
    :sequence: Will recieve the sequence where the aa will be looked for
    :residue: The aminoacid residue to look for within the sequence
    '''  
    # Since acumulators will be used, they must be initialized to zero 
    residueContent = 0
    fileLenght = 0 
   
    #The input residue is converted into uppercase letter
    residue = residue.upper()
    
    # The for loop will travel torough all lines in the file
    for line in sequence:
        #Transform all letters from the sequence in uppercase letters
        line = line.upper()
        # Ignores lines starting with # or >
        if line.startswith("#") or line.startswith(">"):
            continue    
        #The acumulator counts the residue content in the sequence    
        residueContent = residueContent + line.count(residue)
    # Sets the pointer to zero
    sequence.seek(0)

    return (residueContent)    

# Dictionary incluidin all full names of the aminoacid residues
aaName = { 
        "A" : "Alanine",
        "R" : "Arginine",
        "N" : "Asparagine",
        "D" : "Aspartic acid",
        "C" : "Cysteine",
        "E" : "Glutamic acid",
        "Q" : "Glutamine",
        "G" : "Glycine",
        "H" : "Histidine",
        "I" : "Isoleucine",
        "L" : "Leucine",
        "K" : "Lysine",
        "M" : "Methionine",
        "F" : "Phenylalanine",
        "P" : "Proline",
        "S" : "Serine",
        "T" : "Threonine",
        "W" : "Tryptophan",
        "Y" : "Tyrosine",
        "V" : "Valine"
        }

import sys

arguments = sys.argv

inputFile = arguments[1]
#Opens the source file
sourceFile = open(f"source/{inputFile}")

print("Enter every residue that you'd like to obtain the percentage of, between each aminoacid residue, you MUST put a SPACE")
#The user gives the desired aminoacid residue(s) 
residue = input()
# Creates a list from every entered aminoacid residue
residueList = residue.split(" ")

#Creating an empty list to add the aminoacids with no repetitions
noRepeatList = []
# The for loop travels thorough every element in the list and appends the elements in a new list, ignoring repeated elements
for element in residueList:
    if element not in noRepeatList:
        noRepeatList.append(element)
    

# The for loop travels thorough every element in the list and then calls de main function to repeat as many times as required
#The loop will print as well the values associated to keys
for element in noRepeatList:
    print (f"The aminoacid '{element}' ")
    print (aaName[element]) 
    print (f" is : '{residueContent(sourceFile, element)}' times in your sequence ")