# Script that compute the cycle's number of assembler program

# Passible operation
op = ["add", "mul", "sub", "div", "ret"]

# Boolean for stop the loop
is_running = True

# Last register
last = "none"

# Number of cylces
cycle = 0

# Print the usage
print("Usage : [op] [register] [register] [register]")
print("End   : ret")
print()
print("Write your assembler :")

# Main loop
while is_running:

    # Cellect input
    instruction = input()
    part = instruction.split(" ")

    # First instruction
    if part[0] == "ret":
        is_running = False

    # Second or more instruction
    else:
        # Last instruction = First instruction
        if last == "none":
            last = part[1]
            cycle = 5
        # Last instruction != First instruction
        else:
            # Dependencies
            if part[2] == last or part[3] == last:
                cycle += 2
            # No dependencies
            else:
                cycle += 1

            # Stock last register
            last = part[1]

# Print the result
print()
print("Number of cycle(s) : ", cycle)
