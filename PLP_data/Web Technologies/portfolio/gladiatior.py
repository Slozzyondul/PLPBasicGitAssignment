import sys
import os
# Get user input using input() function
user_input = input("Enter your input: ")

# You can now process the user input
# For example, print it back out:
print("You entered:", user_input)

# Or, perform calculations or other operations based on the input

# Write the final output to STDOUT (optional)
# Since you already printed within the processing part, this might not be necessary
# sys.stdout.write("This is additional output\n")


def time_to_meet(P, X, R1, N, Y, R2):
  """
  This function calculates the time it takes for Paul and Nina to reach the meeting point,
  considering their travel distances, speeds, and number of repairs.

  Args:
      P: Distance between meeting point and Paul's place (km).
      X: Constant speed of Paul's vehicle (km/hr).
      R1: Number of repairs required by Paul.
      N: Distance between meeting point and Nina's place (km).
      Y: Constant speed of Nina's vehicle (km/hr).
      R2: Number of repairs required by Nina.

  Returns:
      A tuple containing three elements:
          - "PAUL", "NINA", or "BOTH" depending on who reaches first.
          - The time taken in hours (integer) for the first person to reach.
  """

  # Calculate travel time for Paul, considering repair time
  paul_time = P / X + R1

  # Calculate travel time for Nina, considering repair time
  nina_time = N / Y + R2

  # Determine who reaches first
  if paul_time < nina_time:
    return "PAUL", int(paul_time)
  elif paul_time > nina_time:
    return "NINA", int(nina_time)
  else:
    return "BOTH", int(paul_time)  # They reach at the same time

# Define input string
input_string = """2
15 5 1
20 10 2
100 50 2
50 10 1"""

# Split input into lines
input_lines = input_string.strip().split('\n')

# Extract the number of test cases
T = int(input_lines[0])

# Loop through each test case
for i in range(1, len(input_lines), 2):  # Start from index 1, step by 2
    # Read input for Paul
    P, X, R1 = map(int, input_lines[i].split())

    # Read input for Nina
    N, Y, R2 = map(int, input_lines[i + 1].split())

    # Call the function to calculate the result
    winner, time = time_to_meet(P, X, R1, N, Y, R2)

    # Print the output
    print(winner)
    print(time)

