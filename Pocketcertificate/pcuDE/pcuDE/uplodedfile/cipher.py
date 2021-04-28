# -*- coding: utf-8 -*-
"""
Created on Mon Aug 26 00:02:22 2019

@author: karan
"""

def encrypt(text,s):
    global cipher
    cipher=""
    for i in range(len(text)):
        char=text[i]
        if(char.isalpha() and char.islower()):
            cipher+=chr((ord(char)+s-97)%26+97)
        elif(char.isalpha() and char.isupper()):
            cipher+=chr((ord(char)+s-65)%26+65)
        else:
            cipher+=char
    return cipher
def decrypt(cipher,s):
    plain=""
    for i in range(len(cipher)):
        char=cipher[i]
        if(char.isalpha() and char.islower()):
            plain+=chr((ord(char)-s-97)%26-97)
        elif(char.isalpha() and char.isupper()):
            plain+=chr((ord(char)-s-67)%26-65)
        else:
            plain+=char
    return plain
text=input("Enter the text")
s=int(input("Enter the key"))
print("Cipher text",encrypt(text,s))
print("Plaintext",decrypt(cipher,s))