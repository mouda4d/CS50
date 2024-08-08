
# main function that calls sub-functions and prints the required data
def main():
    emoticon = input("Please show us your current mood: ")
    emoji = convert(emoticon)
    print(emoji)

# converts :) and :( to emojis
def convert(str):
    return str.replace(":)", "🙂").replace(":(", "🙁")


# calls the main function
main()
