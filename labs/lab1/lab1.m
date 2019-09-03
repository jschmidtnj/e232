% part 1
disp("part 1");
% 1
disp("1");
magic_square=[16 3 2 13; 5 10 11 8; 9 6 7 12; 4 15 14 1;];
disp(magic(4)); % matlab generated square
disp(magic_square);
% 2
disp("2");
disp(size(magic_square));
disp(det(magic_square));
disp(cond(magic_square));
disp(sum(magic_square));
disp(sum(diag(magic_square)));
% 3
disp("3");
sum_antidiagonal=sum([magic_square(4,1), magic_square(3,2),magic_square(2,3),magic_square(1,4)]);
disp(sum_antidiagonal);
% 4
disp("4");
magic_zero_diagonal=[0 3 2 13; 5 0 11 8; 9 6 0 12; 4 15 14 0;];
part4_soln=magic_zero_diagonal \ [1; 1; 1; 1;];
disp(part4_soln);

% part 2
disp("part 2");
% 1
disp("1");
DATA=[2 7 9 7; 3 1 5 6; 8 1 2 5;];
disp(DATA);
disp(DATA');
disp("% transpose of DATA matrix (row and column elements swapped)");
disp(DATA(:,[1 4]));
disp("% gets the first and fourth columns of DATA");
disp(reshape(DATA,2,6));
disp("% reshapes the DATA matrix to have 2 rows and 6 columns");
disp(flipud(DATA));
disp("% flips DATA vertically, so the bottom row is on the top");
disp(fliplr(DATA));
disp("% flips DATA horizontally, so the left most row is on the right");
disp([DATA; DATA(end,:)]);
disp("% adds a copy of the last row of DATA to the end (making 4 rows)");
disp(DATA(1:3,:));
disp("% does not change DAYA matrix. just indexes itself");
disp([DATA ; DATA(1:2,:)]);
disp("% creates new array with DATA followed by the first 2 rows of DATA,");
disp("% for a total length of 5 rows.");
disp(sum(DATA'));
disp("% sums each row in DATA, outputs a 1x3 (1 row, 3 col) matrix of results");
disp(sum(DATA,2));
disp("% sums each row in DATA, outputs a 3x1 (3 row, 1 col) matrix of results");
disp([[DATA; sum(DATA)] [sum(DATA,2);sum(DATA(:))]]);
disp("% output a 5x5 array, with sums of rows and colums");
disp("% in the fifth column and 5th row, respectively. the 4x4 array starting on");
disp("% the top left is the original DATA array");

% part 3
disp("part 3");
t=[0:1/200:2];
plot(0.1-0.1*exp(-6*t).*cos(8*t)-0.075*exp(-6*t).*sin(8*t));
title("1 DoF Mechanical Vibration System");
xlabel("time (s)");
ylabel("x(t) (Amplitude)");

% part 4
disp("part 4");
noise_data=load('noise.txt','ascii');
%disp(noise_data);
plot(noise_data(:,1),noise_data(:,2));
title("Sine and Noise over Time");
xlabel("x (s)");
ylabel("sin(x),noise(x) (V)");
hold;
sine_data=load('sine.txt','ascii');
plot(sine_data(:,1),sine_data(:,2));
%disp(sine_data);

% 4a
disp("part 4a");
noise_data=load('noise.txt','ascii');
%disp(noise_data);
plot(noise_data(:,1),noise_data(:,2));
title("Noise over Time");
xlabel("x (s)");
ylabel("noise(x) (V)");

% 4b
disp("part 4b");
sine_data=load('sine.txt','ascii');
plot(sine_data(:,1),sine_data(:,2));
title("Sine and Noise over Time");
xlabel("x (s)");
ylabel("sin(x) (V)");
%disp(sine_data);
