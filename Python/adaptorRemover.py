'''NAME
        AdaptorRemover.py
VERSION
        1.0
AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>
DESCRIPTION
      The following code removes the first 14 nitrogenated bases from the sequence given by user, creates a new file with the clean sequences
      and prints the lenght of the clean sequences
CATEGORY
       Adaptor removing
USAGE
        The user must have a file with the sequence, called sequence.txt in a directory called source, otherwise the program will not work
ARGUMENTS
  
'''

import sys

arguments = sys.argv

path = arguments[1]

print("The following code will remove the first 14 nucleotides (adaptors) from the given sequences, then, it will create a new file with the clean sequences and print them")
print("The program will work either with lowercase or uppercase letters")

#Opening the file with the sequences
file = open(path, "r")
file = file.read()


#If the program finds a jump line, a new element will be created
newList = file.split("\n")

#Creating a new file where the clean sequence will be written
newFile = open("source/cleanSequence.txt", "w+")
print("The lenght of clean DNA fragments are:\n")

for line in newList:
#The for loop writes every cleaned element from the list in the new file with a line jump
    newFile.write(line[14:]+"\n")
#prints the lenghttof every "purified" DNA fragment
    lenght = len(line[14:])
    print(lenght)

#Closes new file    
newFile.close()
 


