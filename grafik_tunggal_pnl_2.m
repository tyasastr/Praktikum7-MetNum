% grafik tunggal pnl 2

% plot kurva
x = linspace(-3, 3, 500);
f = @(x) exp(x) - x.^2;
y = f(x);

plot(x, y, 'b');

% menggambar sumbu x dan y
xline(0,'k');
yline(0, 'k');

xlabel('x');
ylabel('y');
title('Grafik Tunggal PNL e^x - x^2');
legend('f(x) = e^x - x^2', 'Location', 'best');

% annotation
gtext('f(x) = e^x - x^2');
gtext('Akar');
