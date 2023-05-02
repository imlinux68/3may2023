#!/bin/python

import string


txt = '''Python is powerful... and fast
plays well with others
runs everywhere
is friendly & easy to learn
is Open
These are some of the reasons people who use Python would rather
not use anything else'''
txt_to_list = txt.split()
#print(txt_to_list)

lows = [i.lower() for i in txt_to_list]
#print (lows)


new_list = [''.join(char for char in item
                    if char not in string.punctuation)
            for item in txt_to_list]

#print(new_list)

n=6
str=new_list
new_lists = []
for x in str:
	if len(x) > n:
		new_lists.append(x)
print("\n\n\nthe list of words longest than 6  letters are: ", new_lists)
