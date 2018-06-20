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


Ex. 3 ¡ª Use of the math library, conditional statements
Input format:
            three integers with a space separated triple a b c, standing for ax2 + bx + c
Output format:
            the solution of function ax2 + bx + c=0

Example input:
             1 -2 2
Example output:
	1.00000-1.00000i
	1.00000+1.00000i
Ex.4-Conditional statements


Input format:
	
	character "v" or "d"
	
	# Vowel Test
		
	a character
	
	# Data type
		
	a number and a character

Example input:
	
	v

	a

Or
	d

	8b

Example output:
	
# Vowel Test
		
	a is a vowel!
	
# Data type
		
	1.000000 char
		
	0.250000 int
		
	0.250000 float
		
	0.125000 double

Ex.5- Pre-processing,program structure,data size

Input format:
            two integers and another integer to choose the operation
Output format:
            operation name:answer

Example input:
             4 2 1
Example output:
             Quotient:2

The size of input:
                 we input integers,so the size of input is the size of integer.In my computer, it is
four bytes. Two integers means eight bytes.

The size of output:
                 the inputs are two integers, and after operation, it is also an integer.By using sizeof
we confirm that it is also four bytes.
