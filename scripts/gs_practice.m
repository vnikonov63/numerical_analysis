functionFolder = fullfile(pwd, '..', 'functions');
addpath(functionFolder);

% Creating a very ill conditioned 8x8 matrix
A = hilb(8);

[Q1, R1] = gs(A);
[Q2, R2] = mgs(A);

checkQ = norm(Q1 - Q2);
checkR = norm(R1 - R2);

orthoQ1 = norm(Q1' * Q1 - eye(8));
orthoQ2 = norm(Q2' * Q2 - eye(8));
