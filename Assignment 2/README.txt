Ex.1 - Algorithms and basic loops

Input format: 
    Any integer is OK. A negative integer means a year before century.
    If you input any strange things that is not integer like '2x' or '201.8', the program will print an error message and prompt the user to input again.

Output format:
    A string. 'Leap year.' or 'Regular year.' or 'The input format is wrong. Please enter again: '

Example input 1:
    2018
Example output 1:
    Regular year.
Example input 2:
    a123.2
Example output 2:
    The input format is wrong. Please enter again: (Then the user should input again.)



Ex.2 - Algorithms and loops

Input format:
    A positive integer n.
Output format:
    'Pythagorean prime: a = b ^ 2 + c ^ 2', where a is the next Pythagorean prime after positive integer n, and a can be expressed as the sum of two squares b^2 and c^2.

Example input:
    10
Example output:
    Pythagorean prime: 13 = 2 ^ 2 + 3 ^ 2 

Notes:
    Instead of using two loops, we use one loop to find b and c, whose range is 0 ~ sqrt(n). Since c = sqrt(a - b ^ 2), if c is an integer, then we find such integer b and c which satisfies the equation.



Ex.3 - Recursion

Input format:
    A positive integer n which is not bigger than 999,999,999 and a step=1 for the recursion function
Output format:
    A string which read n as proper numbers in english word

Example input:
    x = ex3_recursion(100345012,1)
Example output:
    x = 'one hundred million  three hundred and forty five thousand and twelve'

Notes:
    I firstly wrote a code without using recursion, which is also uploaded and is named as 'ex3_nonrec' .








Ex.4 - Mathematical functions, loops, and recursion



(1)Iteration

Input format:

    A function, an interval, a precision

Output format:

    A root of the function which satisfies the precision in the interval.



Example input:

    X0 = Ex4_Iteration(@(x)x^2+2*x-1,[0 1],6)

Example output:

    X0 = 0.414214



(2)Recursion

Input format:

    A function, an interval, a precision

Output format:

    A root of the function which satisfies the precision in the interval.



Example input:

    X0 = Ex4_Iteration(@(x)x^2+2*x-2,[0 1],5)

Example output:

    X0 = 0.73205




Ex.5 - Control statements

Input format:
    A positive integer
Output format:
    The next Armstrong number or n (if n is an Armstrong number). If the input is equal or less than 0, the function will return 0.

Example input 1:
    x = Ex5(150)
Example output 1:
    x = 153
Example input 2:
    x = Ex5(-1)
Example output 2:
    x = 0

Notes:
    An Armstrong number is a number whose sum of the power of the number of digits in n of each of its digits is n itself.



Ex.6 - Basics on functions



Input format:

    Day of the month, month, century year

Output format:

    Day of the week



Example input:

    Day = Ex6_zeller(30,5,2018)

Example output:

    Day = 'Wednesday'