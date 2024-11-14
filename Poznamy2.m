M_max = 8;
n0 = 1500;
s_values = linspace(0, 1, 101);
M_values = zeros(1, length(s_values));
n_values = zeros(1, length(s_values));

for i = 1:length(s_values)
    s = s_values(i);
    M_values(i) = (2 * M_max * s) / (2 - s);
    n_values(i) = n0 * (1 - s);
end

figure;
plot(n_values, M_values, 'b-', 'LineWidth', 1.5);
grid on;

U0 = 100;
R = 10;
C = 1e-3;
tau = R * C;
t = linspace(0, 5 * tau, 100);
U = U0 * (1 - exp(-t / tau));

figure;
plot(t, U, 'r-', 'LineWidth', 1.5);
grid on;

data = load('char_bat.txt');
t = data(:,1);
V_nominal = data(:,2);
V_2A = data(:,3);
V_4A = data(:,4);
V_5A = data(:,5);

figure;
subplot(2, 1, 1);
plot(t, V_nominal, 'k-', 'LineWidth', 1.5);
grid on;

subplot(2, 1, 2);
plot(t, V_2A, 'b-', t, V_4A, 'g-', t, V_5A, 'r-', 'LineWidth', 1.5);
grid on;
