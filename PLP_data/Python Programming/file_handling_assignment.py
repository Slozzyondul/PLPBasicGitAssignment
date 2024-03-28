#file creation
# Open the file in write mode ('w')
with open("my_file.txt", "w") as file:
    # Write three lines of text to the file
    file.write("heya! my name is solo\n")
    file.write("born in 1996\n")
    file.write("i just love programming\n")

#file reading and display
# Open the file in read mode ('r')
with open("my_file.txt", "r") as file:
    # Read the contents of the file
    contents = file.read()
    # Display the contents on the console
    print(contents)

#file appending
with open("my_file.txt", "a") as file:
    # Write three lines of text to the file
    file.write("heya! my name is solo\n")
    file.write("born in 1996\n")
    file.write("i just love programming\n")
    # Append three additional lines of text to the file
    file.write("apart from that, i can do:\n")
    file.write("other activities i enjoy\n")
    file.write("like games!\n")


# Open the file in read mode ('r')
with open("my_file.txt", "r") as file:
    # Read the contents of the file
    contents = file.read()
    # Display the contents on the console
    print(contents)

#Error Handling:
try:
    with open("my_file.txt", "a") as file:
        # Write three lines of text to the file
        file.write("heya! my name is solo\n")
        file.write("born in 1996\n")
        file.write("i just love programming\n")
        # Append three additional lines of text to the file
        file.write("apart from that, i can do:\n")
        file.write("other activities i enjoy\n")
        file.write("like games!\n")
except FileNotFoundError:
    print("error: file not found")
except PermissionError:
    print("error: permission denied!")
except Exception as e:
    print("an error popped", str(e))
finally:
    print("operation complete successfully!")
    