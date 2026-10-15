% grafik ganda pnl 2

% plot kurva
x = linspace(-3, 3, 500);
f1 = @(x) exp(x);
f2 = @(x) x.^2;

y1 = f1(x);
y2 = f2(x);

plot(x, y1, x, y2);

% sumbu
xline(0,'k');
yline(0, 'k');

xlabel('x');
ylabel('y');
title('Grafik Ganda PNL e^x - x^2');
legend('y1 = e^x', 'y2 = x^2', 'Location', 'best');

gtext('y1 = e^x');
gtext('y2 = x^2');
gtext('Akar');
