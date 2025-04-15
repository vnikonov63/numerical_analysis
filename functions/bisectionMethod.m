function midPoints = bisectionMethod(f, a, b, epsilon, delta, M)
    fa = f(a);
    fb = f(b);
    midPoints = [];

    if (fa * fb >= 0)
        return;
    end

    for k = 1:M
        c = (a + b)/2;
        fc = f(c);

        midPoints = [midPoints, c];

        if (abs(fc) < epsilon) || ((b - a)/2 < delta)
            return;
        end

        if sign(fc) == sign(fa)
            a  = c;
            fa = fc;
        else
            b  = c;
            fb = fc;
        end

    end