functionFolder = fullfile(pwd, '..', 'functions');
addpath(functionFolder);

f = @(x) x^3 - 2;

a = 1; 
b = 2;

epsilon = 1e-8;  
delta   = 1e-8;  
M = 50;    

C = bisectionMethod(f, a, b, epsilon, delta, M);

figure;
plot(C, 'o-');
xlabel('Iteration index');
ylabel('Midpoint');
title('Bisection Method Midpoints');
grid on;