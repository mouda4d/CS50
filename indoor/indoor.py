
# main function that calls sub-functions and prints the required data
def main():
    no_shouting = lower()
    print(no_shouting)

# receives the user's input and lowercases it
def lower():
    shouting = input("Please shout loudly: ")
    return shouting.lower().strip()

# calls the main function
main()
