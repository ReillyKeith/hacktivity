import re


text = 'The quick brown\nfox jumps*over the lazy dog.'
print(re.split('; |, |\*|\n',text))


fr = open("DataFile1.txt", "r")
