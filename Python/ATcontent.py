'''NAME
       ATcontent.py

VERSION
        1.1

AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>

DESCRIPTION
      The following code counts AT content in a DNA sequence and prints its final AT percentage

CATEGORY
       AT content in a DNA squence

USAGE
        AT content in a DNA sequence

ARGUMENTS
  -dnaInput: DNA string given by user
  -tContent: T content in DNA string
  -aContent: A content in DNA string
  -percent: Final AT percentage in DNA string


'''
print ("Enter your DNA sequence either in lowercase or uppercase letters")

#User gives a DNA string

dnaInput =	input().upper() 

tContent =	dnaInput.count('T') 

aContent =  dnaInput.count('A') 

percent	 =	((tContent+aContent)/len(dnaInput))*100 

#Prints DNA sequence given by user

print (dnaInput) 

print ("AT percentage in your sequence is: ")

#Prints final percentage

print (percent) 