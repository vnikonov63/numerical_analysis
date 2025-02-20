function [Q,R]=gs(A)
    n = size(A,2);
    for i=1:n
        Q(:,i)= A(:,1);
        for j=1:(i-1)
            R(j,i) = (A(:,i))'*Q(:,j);
            Q(:,i) = Q(:,i)-R(j,i)*Q(:,j);
        end
        R(i,i) = norm(Q(:,i));
        Q(:,i)=Q(:,i)/R(i,i);
    end