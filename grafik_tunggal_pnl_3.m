% grafik tunggal pnl 3

% plot kurva
x = linspace(-1.99, 3, 500);
f = @(x) log(x + 2) + 2*x -3;
y = f(x);

plot(x, y, 'b');

% sumbu
xline(0,'k');
yline(0, 'k');

xlabel('x');
ylabel('y');
title('Grafik Tunggal PNL log(x + 2) + 2*x -3');
legend('f(x) = log(x + 2) + 2x -3', 'Location', 'southeast');

% annotation
gtext('f(x) = log(x + 2) + 2x -3');
gtext('Akar');
