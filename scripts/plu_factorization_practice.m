functionFolder = fullfile(pwd, '..', 'functions');
addpath(functionFolder);

% Display the Matrix A
A = [2, 3, 1;
     4, 7, 2;
     6, 18, -1];

disp('Original Matrix A:');
disp(A);

% Perform PLU Factorization 
[P, L, U] = plu_factor(A);

disp('Permutation Matrix P:');
disp(P);
disp('Lower Triangular Matrix L:');
disp(L);
disp('Upper Triangular Matrix U:');
disp(U);

% Make sure it is correct
PA = P * A;
LU = L * U;

disp('P * A:');
disp(PA);
disp('L * U:');
disp(LU);

if norm(PA - LU, 'fro') < 1e-10
    disp('The factorization appears to be correct!');
else
    disp('There seems to be an error in the factorization.');
end

