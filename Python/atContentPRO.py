'''NAME
       atContentPRO.py
VERSION
        2.0
AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>
DESCRIPTION
      The following code counts AT content in a DNA sequence 
      and prints its final AT percentage and its translation to aminoacid
CATEGORY
       AT content in a DNA squence and its translation to aminoacid sequence
USAGE
        $ python atContentPRO.py -p path/to/file
        If the sequence is not divisible by 3, the program will automatically 
        cut the final letters of the sequence until it's divisble by 3
ARGUMENTS
::-p: str, path to the file that contains the DNA sequence
::--path: str, path to the file that containts the DNA sequence
'''


import argparse



def ATContent (inputFile):
    '''
    Calculates AT percentage from the sequence given by user
    ::inputFile: str, file containing the desired sequence 
                from which AT percentage will be calculated
    ::return: float, Percentage of AT in the sequence            
    '''
   
    inputFile = inputFile.upper()
    tContent = inputFile.count('T')
    aContent = inputFile.count('A')
    percent = ((tContent+aContent)/len(inputFile))*100 
    return (percent)



def codonTranslate (inputFile):
    '''
    Translates DNA sequence into aminoacid
    ::inputFile: str, DNA sequence to be translated into an aminoacid sequence
    ::return: str, sequence of translated DNA into aminoacids
    '''
    
    codonDictionary = {
        'ATA':'I', 'ATC':'I', 'ATT':'I', 'ATG':'M', 
        'ACA':'T', 'ACC':'T', 'ACG':'T', 'ACT':'T', 
        'AAC':'N', 'AAT':'N', 'AAA':'K', 'AAG':'K', 
        'AGC':'S', 'AGT':'S', 'AGA':'R', 'AGG':'R',
        'CTA':'L', 'CTC':'L', 'CTG':'L', 'CTT':'L', 
        'CCA':'P', 'CCC':'P', 'CCG':'P', 'CCT':'P', 
        'CAC':'H', 'CAT':'H', 'CAA':'Q', 'CAG':'Q', 
        'CGA':'R', 'CGC':'R', 'CGG':'R', 'CGT':'R', 
        'GTA':'V', 'GTC':'V', 'GTG':'V', 'GTT':'V', 
        'GCA':'A', 'GCC':'A', 'GCG':'A', 'GCT':'A', 
        'GAC':'D', 'GAT':'D', 'GAA':'E', 'GAG':'E', 
        'GGA':'G', 'GGC':'G', 'GGG':'G', 'GGT':'G', 
        'TCA':'S', 'TCC':'S', 'TCG':'S', 'TCT':'S', 
        'TTC':'F', 'TTT':'F', 'TTA':'L', 'TTG':'L', 
        'TAC':'Y', 'TAT':'Y', 'TAA':'Stop', 'TAG':'Stop', 
        'TGC':'C', 'TGT':'C', 'TGA':'Stop', 'TGG':'W'
        }
    
    aaSequence = ""
    
    '''If the lenght of the sequence is not divisible by 3, 
    the program will eliminate characters until it's divisible by 3
    '''
    if len(inputFile) % 3 == 1:
        inputFile = inputFile[:-1]

    if len(inputFile) % 3 == 2:
        inputFile = inputFile[:-2]   

    # Creates DNA triplets and then search the corresponding aminoacid within the dictionary
    for counter in range (0, len(inputFile), 3):
        aminoacid = inputFile[counter:counter+3]
        aaSequence = aaSequence + codonDictionary[aminoacid]
    return (aaSequence)



def sequenceCleaner (inputFile):
    '''
    Cleans the sequence to remove undesirable elements from the sequence 
    such as headlines or line jumps
    ::inputFile: str, The file to be cleaned
    ::return: str, clean sequence with no line jumps nor undesirable elements
    '''

    cleanSequence = ""
    for line in inputFile:
        if line.startswith(">") or line.startswith("#"):
            continue
        cleanSequence = cleanSequence + line.strip()
    return (cleanSequence)        



#MAIN

# Creates argument handler
parser = argparse.ArgumentParser(description = "program that counts AT content from a sequence and translates it to aminoacids")

parser.add_argument(
    "-p", "--path",
    metavar = "path/to/file",
    help = "File with the DNA sequence", 
    required = True)
parser.add_argument(
    "-o", "--output",
    metavar = "NameOfFile.txt",
    help = "Name of your output file",
    required = False)


args = parser.parse_args()

#Asigning the name to the output file
#Users optional name
if args.output :
    outputFileName = args.output
#Default name
else : 
    outputFileName = "atContentOutput.txt"
    


# Asigning the argument to a new variable
path = args.path

# Opening input file
file = open(path, "r")
outputFile = open (outputFileName, "w+")

sequence = sequenceCleaner(file)


print("AT percentage in your DNA sequence is: ")
print(ATContent(sequence))
print("The translated sequence to aminoacids is: \n")
print(codonTranslate(sequence))
print(f"A new file called {outputFileName} will be created with the translated sequence")
outputFile.write("Translated DNA sequence\n" +codonTranslate(sequence))

outputFile.close()
file.close()