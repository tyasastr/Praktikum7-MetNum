% grafik tunggal pnl 1

% plot kurva
x = linspace(-2, 3, 500);
% f(x) = 3*x^3 - 5*x^2 + 4*x - 7
% y = 1
% f(x) = y
% 3*x^3 - 5*x^2 + 4*x - 7 = 1
% 3*x^3 - 5*x^2 + 4*x - 7 _ 1 = 0
% 3*x^3 - 5*x^2 + 4*x - 8 = 0, maka
f = @(x) 3*x.^3 - 5*x.^2 + 4*x - 8;
y = f(x);

plot(x, y, 'b');
hold on;

% menggambar sumbu x dan y
xline(0,'k');
yline(0, 'k');

xlabel('x');
ylabel('y');
title('Grafik Tunggal PNL 3x^3 - 5x^2 + 4x - 7 =1');
legend('f(x) = 3x^3 - 5x^2 + 4x -8', 'Location', 'best')

% annotation
gtext('f(x) = 3x^3 - 5x^2 + 4x -8');
gtext('Akar');
