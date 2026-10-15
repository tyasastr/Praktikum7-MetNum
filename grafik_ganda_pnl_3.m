% grafik ganda pnl 3

% plot kurva
x = linspace(-1.99, 3, 500);
f1 = @(x) log(x + 2);
f2 =@(x) 2*x - 3;

y1 = f1(x);
y2 = f2(x);

plot(x, y1, x, y2);

% sumbu
xline(0,'k');
yline(0, 'k');

xlabel('x');
ylabel('y');
title('Grafik Ganda PNL log(x + 2) + 2*x -3');
legend('y1 = log(x + 2)', 'y2 = 2x - 3', 'Location', 'southeast');

% annotation
gtext('y1 = log(x + 2)');
gtext('y2 = 2*x - 3');
gtext('Akar');
