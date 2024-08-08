
# main function that calls sub-functions and prints the required data
def main():
    chill = slow_down()
    print(chill)

# receives the user's input and replaces spaces by '...'
def slow_down():
    lecture = input("Please speak quickly: ")
    return lecture.strip().replace(" ", "...")

# calls the main function
main()
