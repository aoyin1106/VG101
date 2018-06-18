VG101 Assignment 4

Contributers:
    Shi Li 	517370910032
    Wang Tianyi	517370910160
    Liu Zhiyuan 51731091240
    Yuan Yin 	517370910260



Ex.1 - Structure, basic programming

Input format:
    Two complex numbers n1, n2, whose real and imaginary parts are integers, and a character of operator.
Output format:
    One complex number.

Example input:
    1+2i 3-4i +
Example output:
    4-2i

Notes:
    Our program only works for integers, such as 3+2i. It doesn't work if the input is real numbers, such as 3.5+2.5i.



Ex.2 - Recursion, basic arithmetic

Algorithm:
    Input : Two integers a, b.
    Output: One integer, GCD of a and b.
    Function GCD(a, b):
      if b = 0 then GCD(a, b) <- a;
      else GCD(a, b) <- GCD(b, a mod b);
    end
    (Here we use the formula gcd(a, b)=gcd(b, a mod b).)

Input format:
    Two integers a, b.
Output format:
    One integer.

Example input:
    120 72
Example output:
    24