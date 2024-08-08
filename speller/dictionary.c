// Implements a dictionary's functionality

#include <ctype.h>
#include <stdbool.h>
#include <stdlib.h>
#include "dictionary.h"
#include <stdio.h>
#include <cs50.h>
#include <string.h>
#include <strings.h>
// Represents a node in a hash table
typedef struct node
{
    char word[LENGTH + 1];
    struct node *next;
} node;

// TODO: Choose number of buckets in hash table

const unsigned int N = 60;
unsigned int counter = 0;
// Hash table
node *table[N];

// Returns true if word is in dictionary, else false
bool check(const char *word)
{
    // TODO

    node *cursor = table[hash(word)];
    while (cursor != NULL)
    {
        if (strcasecmp(cursor->word, word) == 0)
        {
            return true;
        }
        cursor = cursor->next;
    }
    return false;
}

// Hashes word to a number
unsigned int hash(const char *word)
{
    // int sum = 0;
    // TODO: Improve this hash function
    // for (int i = 0, k = strlen(word); i < k; i++)
    {
        // if (isalpha(word[i]))

        // sum += toupper(word[i]);

    }
    // return (sum % N);

    // if (word[1] != '\0')
    {
        // return (toupper(word[0]) - 'A' + toupper(word[1]) - 'A');
    }
    // else
    {
        return toupper(word[0]) - 'A';
    }
}

// Loads dictionary into memory, returning true if successful, else false
bool load(const char *dictionary)
{
    // TODO
    FILE *dict = fopen(dictionary, "r");
    if (dict == NULL)
    {
        // fclose(dict);
        return false;
    }
    char *buffer = malloc(LENGTH + 1);
    // bool firsttime = true;
    node *n = NULL;
    while (fscanf(dict, "%s", buffer) != EOF)
    {
        n = malloc(sizeof(node));
        if (n == NULL) //&& firsttime)
        {
            return false;
        }
        strcpy(n->word, buffer);
        int hashValue = hash(n->word);
        counter++;
        n->next = table[hashValue];
        table[hashValue] = n;
        // firsttime = false;
        // printf("%s\n", buffer);
        // printf("%s\n", n->word);
    }
    // free(n);
    free(buffer);
    fclose(dict);
    return true;
}

// Returns number of words in dictionary if loaded, else 0 if not yet loaded
unsigned int size(void)
{
    // TODO
    return counter;
}

// Unloads dictionary from memory, returning true if successful, else false
bool unload(void)
{
    // TODO
    for (int i = 0; i < N; i++)
    {
        node *cursor = table[i];
        node *tmp = table[i];
        if (cursor == NULL)
        {
            break;
        }
        while (true)
        {
            free(tmp);
            cursor = cursor->next;
            if (cursor == NULL)
            {
                break;
            }
        }
    }
    // free(n);
    return true;
}
