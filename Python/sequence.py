'''NAME
        sequence.py
VERSION
        1.0
AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>
DESCRIPTION
      Program that forms part of my own personal library 
CATEGORY
       Functions applied to DNA sequences
USAGE
        Use setup.py to install
ARGUMENTS
  
'''



def ATcontent(sequence):
    '''
     This function counts and prints AT content in a sequence given by user, 
     the printed number will be the total percentage of AT in the sequence
     :sequence: Sequence given by user from which AT content will be obtained
    '''
    
    sequence = sequence.upper()
    
    tContent = sequence.count("T")
    
    aContent = sequence.count("A")
   
    percent = ((tContent+aContent)/len(sequence))*100
    print ("The AT percentage in your input sequence is ")
    return(percent)

def complement(sequence):
	'''
	 This function obtains the complementary DNA sequence from a source sequence
	 :sequence: Sequence given by user from which complement will be obtained
	'''
	
    sequence = sequence.upper()
    
    sequence = sequence.replace("A", "t").replace("G", "c").replace("T", "a").replace("C", "g") 
    print("The complementary sequence of the source sequence is\n")
    return(sequence)    

  