f       = @(x) x^3 - 2;
fprime  = @(x) 3*x^2;

initialGuess = 2;
epsilon      = 1e-8;  
beta         = 1e-8;   
M            = 50;    

aproxxs = newtonMethod(f, fprime, initialGuess, M, beta, epsilon);

figure;
plot(aproxxs, 'o-');
xlabel('Iteration index');
ylabel('Approximation');
title('Newton Method Approximations');
grid on;