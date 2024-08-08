# TODO
from cs50 import get_string


def main():
    userparagraph = get_string("Text: ")
    # printf("%s\n", userparagraph)
    letters = count_letters(userparagraph)
    words = count_words(userparagraph)
    sentences = count_sentences(userparagraph)
    # print(letters)
    # print(words)
    # print(sentences)

    index = round(0.0588 * (letters / words * 100) - 0.296 * (sentences / words * 100) - 15.8)
    if index < 1:
        print("Before Grade 1")
    elif (index > 16):
        print("Grade 16+")
    else:
        print("Grade " + str(index))

# count the letters


def count_letters(text):
    n_alpha = 0
    for letter in text:
        # check for alphabetic characters
        if letter.isalpha():
            n_alpha += 1
    return n_alpha

# count the words


def count_words(text):
    n_word = 1
    for i in text:
        # check for a space
        if (i.isspace()):
            n_word += 1
    return n_word

# count the sentences


def count_sentences(text):
    n_sentences = 0
    for i in text:
        # check for signs that a sentence has ended
        if (i == '.' or i == '?' or i == '!'):
            n_sentences += 1
    return n_sentences


if __name__ == "__main__":
    main()