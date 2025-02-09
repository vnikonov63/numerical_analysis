functionFolder = fullfile(pwd, '..', 'functions');
addpath(functionFolder);

A = [4, 2; 2, 3];


R = cholesky_factor(A);

disp('The Cholesky factor R is:');
disp(R);