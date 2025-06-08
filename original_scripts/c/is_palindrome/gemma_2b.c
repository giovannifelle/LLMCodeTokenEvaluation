```c
#include <stdio.h>
#include <stdlib.h>

int is_palindrome(char *str)
{
    int n = strlen(str);
    int i;
    int j;

    for (i = 0; i < n / 2; i++)
    {
        if (str[i] != str[n - i - 1])
        {
            return 0;
        }
    }

    return 1;
}

int main()
{
    char str[] = "racecar";
    printf("%d", is_palindrome(str));
    return 0;
}