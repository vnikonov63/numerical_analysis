functionFolder = fullfile(pwd, '..', 'functions');
addpath(functionFolder);

A = [2 1;
     0 3];
x0 = [1; 1];  

[x_est, lambda_est] = power_method(A, x0, 50);

fprintf('Power method estimate of dominant eigenvalue: %f\n', lambda_est);
fprintf('Power method estimate of eigenvector:\n');
disp(x_est);

disp('Exact eigenvalues (using eig(A)) = ');
disp(eig(A));