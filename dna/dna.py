import csv
import sys
# import pandas as pd


def main():

    # TODO: Check for command-line usage
    if len(sys.argv) != 3:
        sys.exit("Usage: python dna.py data.csv sequence.txt")
    # TODO: Read database file into a variable
    data = open(sys.argv[1])
    reader1 = csv.DictReader(data)
    # TODO: Read DNA sequence file into a variable
    sequence = open(sys.argv[2])
    reader2 = sequence.read()
    # TODO: Find longest match of each STR in DNA sequence
    line_count = 1
    STR = []  # keys
    count = {}  # value count
    new = []  # database list
    for row in reader1:  50 # iterate over all elements
        for element in row:
            if line_count < len(row) and element != "name":
                STR.append(element)
                line_count += 1
    for strr in STR:  # calculate the longest match and store in list
        count[strr] = str(longest_match(reader2, strr))
    # print(count)
    # TODO: Check database for matching profiles
    data.seek(0)
    for element in reader1:
        new.append(element)
    for i in range(len(new)):  # rows
        counter = 0
        for j in STR:  # iterate over the keyvalues except name
            if (new[i][j] == count[j]):
                counter += 1
                if counter == len(count):
                    print(new[i]["name"])  # print match name
                    sys.exit()
    print("No match")
    return


def longest_match(sequence, subsequence):
    """Returns length of longest run of subsequence in sequence."""

    # Initialize variables
    longest_run = 0
    subsequence_length = len(subsequence)
    sequence_length = len(sequence)

    # Check each character in sequence for most consecutive runs of subsequence
    for i in range(sequence_length):

        # Initialize count of consecutive runs
        count = 0

        # Check for a subsequence match in a "substring" (a subset of characters) within sequence
        # If a match, move substring to next potential match in sequence
        # Continue moving substring and checking for matches until out of consecutive matches
        while True:

            # Adjust substring start and end
            start = i + count * subsequence_length
            end = start + subsequence_length

            # If there is a match in the substring
            if sequence[start:end] == subsequence:
                count += 1

            # If there is no match in the substring
            else:
                break

        # Update most consecutive matches found
        longest_run = max(longest_run, count)

    # After checking for runs at each character in seqeuence, return longest run found
    return longest_run


main()
