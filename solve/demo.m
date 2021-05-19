%---test0---%
%2021.4.18
clc;
clear;
close all;
R = orth(rand(3,3));
t = rand(3,1);

% 产生随机的点，之后换成要的点
n = 10; 
A = rand(3,n);
A2 = [A;ones(1,10)];

% 设定另一个点集
B = R*A + repmat(t, 1, n);
B2 = [B;ones(1,10)];

%求解R，t
[ret_R, ret_t] = solve_3D(A, B);
RT_matrix = solve_RT_matrix(B2,A2);
R1 = RT_matrix(1:3,1:3);T1 = RT_matrix(1:3,4);

%验证误差
B2 = (ret_R*A) + repmat(ret_t, 1, n);
B3 = R1*A + T1;

%求解rsme
fprintf('solve_3D的解\n')
RT=[ret_R,ret_t;0 0 0 1]
err = B2 - B;
err = err .* err;
err = sum(err(:));
rmse1 = sqrt(err/n)

fprintf('solve_RT的解\n')
RT = RT_matrix(1:4,1:4)
err = B3 - B;
err = err .* err;
err = sum(err(:));
rmse2 = sqrt(err/n)

