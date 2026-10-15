% grafik ganda pnl 1

% plot kurva
x = linspace(-2, 3, 500);
% f(x) = 3*x^3 - 5*x^2 + 4*x - 7
% y = 1
% f(x) = y
% 3*x^3 - 5*x^2 + 4*x - 7 = 1
% 3*x^3 - 5*x^2 + 4*x - 7 _ 1 = 0
% 3*x^3 - 5*x^2 + 4*x - 8 = 0, maka:
f1 = @(x) 3*x.^3 - 5*x.^2 +  4*x - 7;
f2 = @(x) 4*x - 8;
y1 = f1(x);
y2 = f2(x);

plot(x, y1, x, y2);

% menggambar sumbu x dan y
xline(0,'k');
yline(0, 'k');

xlabel('x');
ylabel('y');
title('Grafik Ganda PNL 3x^3 - 5x^2 + 4x - 7 =1');
legend('y1 = 3*x^3 - 5*x^2', 'y2 = 4*x - 7', 'Location', 'southeast')

% annotation
gtext('f(x) = 3*x^3 - 5*x^2')
gtext('y2 = 4*x - 7')
gtext('Akar')
