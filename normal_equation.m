% Read data
data_simple = dlmread('data_simple.csv', ',', 2, 0);
data_len = size(data_simple)(1);

% Get x and y
x_simple = ones(data_len, 2);
x_simple(:,1) = data_simple(:,1);
y_simple = data_simple(:,2);

% Calculate vector a ==> y = a0x0 + a1x1 --> x0 is always 1
a_simple = (x_simple' * x_simple) ^ -1 * x_simple' * y_simple;


% Read data
data_multi = dlmread('data_multi.csv', ',', 0, 0);
data_len = size(data_multi)(1);
x_multi = ones(data_len, 3);
x_multi(:,2:3) = data_multi(:,1:2);
y_multi = data_multi(:,3);

% Calculate vector a ==> y = a0x0 + a1x1 + a2x2 --> x0 is always 1
a_multi = (x_multi' * x_multi) ^ -1 * x_multi' * y_multi;

a_simple
a_multi