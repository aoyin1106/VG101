VG101 Assignment 5

Contributers:
    Shi Li 	517370910032
    Wang Tianyi	517370910160
    Liu Zhiyuan 517370910240
    Yuan Yin 	517370910260



Ex.1 - Array

Input format:
              one line with one positive integer
Output format:
              lists of primes that are smaller than n; with a space separate them

Example input:
              6
Example output:
              2 3 5

Notes: use the algorithm of the sieve of eratosthenes.

JOJ score:Accepted


Ex.2 - Arrays and functions

Input format:
               one line with one integer and the three first letters of a day (e.g. 6 Fri)
Output format: 
	similar to the sample output below
June
Sun Mon Tue Wed Thu Fri Sat
                     1   2
 3   4   5   6   7   8   9
10  11  12  13  14  15  16
17  18  19  20  21  22  23
24  25  26  27  28  29  30

Example input:
              6 Fri
Example output:
June
Sun Mon Tue Wed Thu Fri Sat
                     1   2
 3   4   5   6   7   8   9
10  11  12  13  14  15  16
17  18  19  20  21  22  23
24  25  26  27  28  29  30

JOJ score:Accepted


Ex.3 - Strings

Input format:
            two lines with the sentence we need to check and the word we need to find
Output format:
            one line showing that how many times the word occurs

Example input:
            aaa a
Example output:
            3

JOJ score:Accepted



Ex.4 - Loops, standard library, mathematical functions

Input format:
            one line with a space separated list in the order v0 theta0 height range_min range_max
Output format:
            one line showing the result with 6 decimals

Example input:
            30 30 1.5 75 85
Example output:
            81.970131
            
JOJ score:Accepted



Ex. 5 ¡ª Loop, array, and sorting

Example output:
First deck
Figure  Suit
  2     Spades
  2     Hearts
  2     Diamonds
  2     Clubs
  3     Spades
  3     Hearts
  3     Diamonds
  3     Clubs
  4     Spades
  4     Hearts
  4     Diamonds
  4     Clubs
  5     Spades
  5     Hearts
  5     Diamonds
  5     Clubs
  6     Spades
  6     Hearts
  6     Diamonds
  6     Clubs
  7     Spades
  7     Hearts
  7     Diamonds
  7     Clubs
  8     Spades
  8     Hearts
  8     Diamonds
  8     Clubs
  9     Spades
  9     Hearts
  9     Diamonds
  9     Clubs
  10    Spades
  10    Hearts
  10    Diamonds
  10    Clubs
  Jack  Spades
  Jack  Hearts
  Jack  Diamonds
  Jack  Clubs
  Queen Spades
  Queen Hearts
  Queen Diamonds
  Queen Clubs
  King  Spades
  King  Hearts
  King  Diamonds
  King  Clubs
  Ace   Spades
  Ace   Hearts
  Ace   Diamonds
  Ace   Clubs



Second deck
Figure  Suit
  6     Clubs
  6     Spades
  4     Hearts
  2     Diamonds
  10    Clubs
  3     Clubs
  King  Diamonds
  8     Diamonds
  3     Hearts
  9     Diamonds
  Jack  Clubs
  4     Clubs
  3     Diamonds
  Jack  Diamonds
  4     Spades
  10    Diamonds
  Jack  Hearts
  5     Spades
  5     Clubs
  2     Spades
  7     Spades
  7     Hearts
  10    Spades
  King  Spades
  Ace   Diamonds
  5     Diamonds
  Ace   Spades
  7     Clubs
  Queen Spades
  Queen Clubs
  6     Diamonds
  Jack  Spades
  Queen Hearts
  8     Hearts
  Queen Diamonds
  2     Clubs
  2     Hearts
  8     Clubs
  King  Hearts
  Ace   Hearts
  9     Clubs
  7     Diamonds
  8     Spades
  9     Hearts
  5     Hearts
  10    Hearts
  6     Hearts
  4     Diamonds
  3     Spades
  King  Clubs
  9     Spades
  Ace   Clubs



Third deck
Figure  Suit
  2     Spades
  2     Hearts
  2     Diamonds
  2     Clubs
  3     Spades
  3     Hearts
  3     Diamonds
  3     Clubs
  4     Spades
  4     Hearts
  4     Diamonds
  4     Clubs
  5     Spades
  5     Hearts
  5     Diamonds
  5     Clubs
  6     Spades
  6     Hearts
  6     Diamonds
  6     Clubs
  7     Spades
  7     Hearts
  7     Diamonds
  7     Clubs
  8     Spades
  8     Hearts
  8     Diamonds
  8     Clubs
  9     Spades
  9     Hearts
  9     Diamonds
  9     Clubs
  10    Spades
  10    Hearts
  10    Diamonds
  10    Clubs
  Jack  Spades
  Jack  Hearts
  Jack  Diamonds
  Jack  Clubs
  Queen Spades
  Queen Hearts
  Queen Diamonds
  Queen Clubs
  King  Spades
  King  Hearts
  King  Diamonds
  King  Clubs
  Ace   Spades
  Ace   Hearts
  Ace   Diamonds
  Ace   Clubs

Ex.6 - Low level C programming

1. Karatsuba algorithm
    Let's use an example to describe how the algorithm works.(Revised from Wikipedia)
    Suppose x = x1 * 2^m + x0, y = y1 * 2^m + y0, where x and y are both binary non-negative integers.
    Then the product is x * y = (x1 * 2^m + x0)(y1 * 2^m + y0) = z2 * 2^(2m) + z1 * 2^m + z0, where z2 = x1 * y1, z1 = x1 * y0 + x0 * y1, and z0 = x0 * y0. To make the algorithm more efficient, z1 can be rewrited as z1 = (x1 + x0)(y1 + y0) - x1 * y1 - x0 * y0, but it seems that this trick doesn't appear in Ex.6 code.
    According to Wikipedia, this algorithm can reduce the time complexity to O(n^1.585), which is more efficient than the common multiplying algorithm that we learn in primary school, whose time complexity is O(n^2).

2. Comments have been added to ex6.c.

3. a. Instead of using 10 as the base, the algorithm use 2 as the base.
   b. Lots of logic operators are used instead of using common operators like "+", "*", etc.
   c. Use macro to swap two integers instead of calling the function. Use XOR to swap two integers.

4. Divide and conquer algorithm
    Divide and conquer algorithm is an algorithm "based on multi-branched recursion". The algorithm breaks a complex problem into several small problems recursively, until the problem cannot be easier, which can be solved directly. Eventually, we combine those solutions to small problems together and get the solution to the complex problem.

5. Optimize the code
    We replace the original loop with bisection algorithm to get the length of a binary number. The time complexity can be reduced from O(s) to O(log s), where s is sizeof(unsigned long int) = 64.
    Details have been included in the comments in ex6.c.