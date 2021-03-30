'''NAME
        complement.py
VERSION
        1.0
AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>
DESCRIPTION
      The following code creates the complementary DNA chain to a ssequence given by user
CATEGORY
       Complementary DNA sequence
USAGE
        $ python complement.py path/to/file
ARGUMENTS
  
'''
import sys

print("The following code will obtain the complementary sequence of a DNA chain")

print("The program will work either with uppercase or lowercase letters")

arguments = sys.argv

path = arguments[1]

#Opening file with the main sequence
file = open(path, "r")
#putting the file into a new variable
read = file.read().upper()
#Replacing nitrogenated bases with their complement
read = read.replace("A", "t").replace("G", "c").replace("T", "a").replace("C", "g")

newFile = open("complementOutput.txt", "w+")

newFile.write(read)

print("The complementary sequence of the source sequence is\n")
#printng complementary chain
print(read)
#closing file

newFile.close()
file.close()