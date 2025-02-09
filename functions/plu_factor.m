function [P, L, U] = plu_factor(A)
    n = size(A, 1);
    P = eye(n);
    L = zeros(n);

    for i = 1 : n
        [~, i_star] = max(abs(A(i:n, i)));
        i_star = i_star + i - 1;

        if i_star ~= i;
            tempA = A(i, :);
            A(i, :) = A(i_star, :);
            A(i_star, :) = tempA;
            tempP = P(i, :);
            P(i, :) = P(i_star, :);
            P(i_star, :) = tempP;
            tempL = L(i, :);
            L(i, :) = L(i_star, :);
            L(i_star, :) = tempL;
        end
        for j = (i + 1) : n
            L(j, i) = A(j, i) / A(i, i);
            A(j, i) = 0;
            for k = (i + 1) : n
                A(j, k) = A(j, k) - L(j, i) * A(i, k);
            end
        end
    end
    U = A;
    L = L + eye(n);