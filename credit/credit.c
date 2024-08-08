#include <cs50.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
long validity(long userinput, bool islast);
string cardtype(long userinput);
string generator();
int main(void)
{
    // get cardnumber from user
    long userinput = get_long("Number: ");
    // function that checksums
    long valid = validity(userinput, true);
    // checks if the last number is 0
    if (valid % 10 == 0)
    {
        // goes to the card type function that returns the type or if it's invalid and prints it
        string type = cardtype(userinput);
        printf("%s\n", type);
    }
    else
    {
        printf("INVALID\n");
    }
}


long validity(long userinput, bool islast)
{
    // stop when the result is less than zero
    if (userinput <= 0)
    {
        return 0;
    }
    // get the last digit
    int currnumber = (userinput % 10);
    int lastcurrnumber = 0;
    // if it's the last number we dont multiply
    if (islast)
    {
        return currnumber + validity(userinput / 10, !islast);
    }
    else
    {
        currnumber *= 2;
        // after multiplying by two we first check if we need to separate it
        if (currnumber % 10 != currnumber)
        {
            lastcurrnumber = currnumber % 10;
            currnumber /= 10;
        }
        return currnumber + lastcurrnumber + validity(userinput / 10, !islast);
    }
}

string cardtype(long userinput)
{
    // reserve an array of size 19 for a string
    char tmp[19];
    // formats the userinput into a string
    sprintf(tmp, "%ld", userinput);
    int length = strlen(tmp);
    // checks the cardtypes
    if (length == 15 && tmp[0] == '3' && (tmp[1] == '7' || tmp[1] == '4'))
    {
        return "AMEX";
    }
    else if (length == 16 && tmp[0] == '5' && tmp[1] <= '5')
    {
        return "MASTERCARD";
    }
    else if ((length == 13 || length == 16) && tmp[0] == '4')
    {
        return "VISA";
    }
    else
    {
        return "INVALID";
    }
}
