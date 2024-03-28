#read = read the contents of a file
#write = to write to a file
#seek = to change the file pointer's position
f = open("test.txt", "r")
content = f.read()
f.close()
print(type(content))

#creating a file
object1 = open("test.txt", "x")
object1.close()
#writing new line to a list
f = open("test/test.txt", "w")
f.write("new content")
f.close()
#writing several lines in 
f = open("test/test.txt", "a")
f.writelines(["\nline1", "\line2", "\line3"])
f.close()

#open file for multiple operations
with open("test.txt", "+r") as file:
    data = file.read()
    file.write("solo welcome to python again!")

#deleting files
#import os = functions that interact with the operating system

import os
file = "test.txt"
if os.path.exists(file):
    os.remove(file)
    print(f"{file} trashed succesfully!")
else:
    print("f{file} doesnt exist here!")
    

#context managers =  you don't need to remember to close a file at the end of your program and you have access to the file in the particular part of the program that you choose.
class MyContextManager:
    def __enter__(self):
        print("specifycontext")
        return self
    def __exit__(self, exc_type, exc_val, exc_tb):
        print("existing context")
        if exc_type is not None:
            print(f"an error of type {exc_type} occurred: {exc_type}")
        return True
with MyContextManager() as cm:
    print("inside context")

