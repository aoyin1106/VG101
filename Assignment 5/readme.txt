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

