clear all
clc


V = linspace(3, 90, 30);

V(1:10) = 20;
V(11:20) = randi([1, 100], 1, 10);
J = sort(V);

bar(J)

%%
clear all 
clc

A = [1 3 5]
B = [3 4 2]

C = nthroot(3*A,3)+ log2(A+B)-((2*A)/B)+exp(A/B)+sin(A+B)

%%
clc
clear all

p = [-1 0 0 2 -5];
roots_p = roots(p)

disp('-x^4 + 2x - 5')

x = -4;

PolynomX = polyval(p, x)

%%
