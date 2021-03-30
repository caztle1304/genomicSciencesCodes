'''NAME
      geneClass.py
VERSION
        1.0
AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>
DESCRIPTION
        Some atributes and methods of a gene class
CATEGORY
        Genes
ARGUMENTS
    ::-n: str, the name of the gene
    ::--name: str, the name of the gene
    ::-f: str, path to the file with dna sequence of the gene
    ::--file: str, path to the file with dna sequence of the gene
    ::-o: str, name of the organism where the gene comes from
    ::--organism: str, name of the organism where the gene comes from
    ::-p: str, type of the product of the gene
    ::--product: str, type of the product of the gene
    ::-l: str, locus where the gene is located
    ::--locus: str, locus where the gene is located
    ::[-w]: str, optional name of the output file
    ::[--writename]: str, optional name of the output file
SEE ALSO
'''
import argparse

class Gene: 
    def __init__(self, name, sequence, organism, productType, locus):

        self.name = name
        self.sequence = sequence
        self.organism = organism
        self.productType = productType
        self.locus = locus
    def translateSequence(self):
        '''
        Translates the sequence of the gene into aminoacids
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

        '''
        If the lenght of the sequence is 
        not divisible by 3, the program
        will cut characters until divisible by 3
        '''

        if len(self.sequence) % 3 == 1:
            self.sequence = self.sequence[:-1]

        if len(self.sequence) % 3 == 2:
            self.sequence = self.sequence[:-2]   

        # Creates DNA triplets and then search the corresponding aminoacid within the dictionary
        for counter in range (0, len(self.sequence), 3):
            aminoacid = self.sequence[counter:counter+3]
            aaSequence = aaSequence + codonDictionary[aminoacid]
        return (aaSequence)



    def atContent(self):
        '''
        Counts AT content in the gene sequence
        '''
        
        self.sequence = self.sequence.upper()
        tContent = self.sequence.count('T')
        aContent = self.sequence.count('A')
        percent = ((tContent+aContent)/len(self.sequence))*100 
        return (percent)


    def complementDNA(self):
        '''
        Gets complementary DNA of the sequence of the gene
        '''

        sequence = self.sequence.lower()
        sequence = sequence.replace("a", "T")
        sequence = sequence.replace("g", "C")
        sequence = sequence.replace("t", "A")
        sequence = sequence.replace("c", "G")

        return(sequence)



def sequenceCreator(file):
    '''
    Gets the sequence of the file and 
    saves it in the sequence attribute
    '''

    sequence = ""
    
    for line in file:
        sequence += line

    return(sequence)


# Creating argument parser

parser = argparse.ArgumentParser(description = "Program with methods to apply to objects")

# adding arguments

parser.add_argument(
    "-n", "--name",
    metavar = "CFTR",
    help = "name of the organisme whom the gene comes from",
    required = True)
parser.add_argument(
    "-f", "--file",
    metavar = "path/to/file",
    help = "path to your file with te sequence of the gene",
    required = True)
parser.add_argument(
    "-o", "--organism",
    metavar = "Spongiforma squarepantsii",
    help = "Name of the organism where the gene comes from",
    required = True)
parser.add_argument(
    "-p", "--product",
    metavar = "protein/siRNA/miRNA",
    help = "gene product",
    required = True)
parser.add_argument(
    "-l", "--locus",
    metavar = "7q31.2",
    help = "locus where your gene is located",
    required = True)
parser.add_argument(
    "-w", "--writename",
    metavar = "NewName.txt",
    help = "Optional name of your output file",
    required = False)

args = parser.parse_args()


# Optional name of the output file
if args.writename:
    outputFileName = args.writename

# default name of the output file
else:
    outputFileName = "outputFile.txt"

file = open(args.file, "r")
outputFile = open(outputFileName, "w+")

# creating the sequence attribute
sequence = sequenceCreator(file)

# defining a new object

gene = Gene(args.name, sequence, args.organism, args.product, args.locus)

print ("AT content in the sequence of your gene is:\n")
print(gene.atContent())
print("The complementary sequence to the sequence of your gene is:\n")
print(gene.complementDNA())
print("The aminoacid translation of your gene sequence is:\n")
print(gene.translateSequence())
print(f"A new file called {outputFileName} will be created with the aminoacid and translated sequence of your gene")

outputFile.write("#Compelementary DNA:\n" + gene.complementDNA() + "\n")
outputFile.write("#Translated sequence to aminoacids:\n" + gene.translateSequence())

# avoiding memoy leak

outputFile.close()
file.close

