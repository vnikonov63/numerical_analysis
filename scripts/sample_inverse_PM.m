rng('default');              
[Q,R] = qr(randn(6));        
D = diag([-2, -1, -0.25, 0.5, 2, 5]);   
A = Q*D*Q';                  
B = A - 0.25*eye(6);         
C = inv(B);                  

q = ones(6,1); s = 1;
for j = 1:12
    q_new = C*q;
    [~, idx] = max(abs(q_new));  
    s = q_new(idx);
    q = q_new / s;               
end

lambda = 0.5;
residual = (A - lambda*eye(6)) * q;
norm_res = norm(residual,2);

fprintf('The 2-norm of the residual is: %g\n', norm_res);
