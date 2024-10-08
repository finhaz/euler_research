%后向欧拉法
clear;
format long;
a = 0;
b = 1;
h = 0.1;
d = 1;
res = forward(a, b, h, d);
x = res(1,:);
y = res(2,:);
z = [1, 1.0954, 1.1832, 1.2649, 1.3416, 1.4142, 1.4832, 1.5492, 1.6125, 1.6733, 1.7321];
y(2,:) = z;
plot(x, y);

function result = forward(a, b, h, y)
    n = (b-a)/h;
    x0 = a;
    x1 = a;
    y0 = y;
    result(1,1) = x0;
    result(2,1) = y0;

    for m = 0:n-1
        x1 = x1 + h;
        f0 = y0 - 2*x0/y0;
        d = y0 + h*f0;
        y1 = calculate(y0, x1, d, h);
        %result = calculate(x1, d, h);
        x0 = x1;
        y0 = y1;
        result(1, m+2) = x0;
        result(2, m+2) = y0;

    end
end

function result = calculate(y0, x1, y1, h)

    acc = -6;
    now = 0.0;
    z1 = y1;

    while now >= -6

        z0 = z1;
        f0 = z0 - 2*x1/z0;
        z1 = y0 + h*f0;
        now = log10(abs(z1-z0));

    end
    result = z1;
end