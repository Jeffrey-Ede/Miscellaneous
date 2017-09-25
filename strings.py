# -*- coding: utf-8 -*-
"""
Created on Thu Jul 27 18:38:22 2017

@author: Jeffrey Ede
"""
# String concatenation and the str() function
x = 'a'
x = x + str('b')+'c'
x = x + '1' + str(2)
print(x)

# Multiple prints. 
print(1, 'r', 3*3)

print('adasdas'+' '+'WWWsfsd') # Concatenation

# Print 1, 3, 7 on the same line as numbers
print(1, 3, 7)
# and as characters
print(str(1)+' '+str(3)+' '+str(7))

# Print the 0-12 times tables
for i in range(13):
    x = ''
    for j in range(13):
        x = x+str(i*j)+' '
    print(x)
    
    