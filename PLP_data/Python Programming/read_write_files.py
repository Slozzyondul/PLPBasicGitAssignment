#input = aking data from the user and storing it in a program for further processing
file = open("test.txt", "r") #open(filename, access_mode)

content = file.read()
print(content)

open(file, mode='r', buffering=-1, encoding=None, errors=None, newline=None, closefd=True, opener=None)
#he open() function has almost 8 parameters along with their default values for each argument as shown above.

#mode = (read-only, write-only, append, both read and write)