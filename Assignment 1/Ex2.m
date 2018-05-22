%Define x and y
x=[3;2;6;8]
y=[4;1;3;5]
%Add the sum of the elements in x to y
z=sum(x)
addition=[y;z]
%Raise each element of x to the power
power=x.^y
%Divide
divide=y./x
%Multiply
z=x.*y
%Add up the elements in z and assign the result to a variable w
w=sum(z)
%Compute
x'*y-w
%Explain the result
%'means transpose so x' is a 1¡Á4 matrix and y is a 4¡Á1 matrix
%After we multiply them together, we get a 1¡Á1 matrix which has only one
%element 72
%w=72.
%So the final value equals 0.