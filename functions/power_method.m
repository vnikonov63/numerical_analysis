function [vec, lambda] = power_method(A, q, iter)
    q_new = q;
    % [the maximum value, the index of the maximum value]
    [~, ind] = max(abs(q_new));
    s = q_new(ind(1));
    q_old = q_new / s;

    for i = 1 : iter
        q_new = A * q_old;
        [~, ind] = max(abs(q_new));
        s = q_new(ind(1));
        q_old = q_new / s;
    end

    vec = q_old; lambda = s;
