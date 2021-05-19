function [R,t] = solve_3D(A, B)
%参考http://nghiaho.com/?page_id=671
%求解P_dp=RT_matrix*P_world
    %找到中心点

    centroid_A = mean(A, 2);
    centroid_B = mean(B, 2);
    [num_rows, num_cols] = size(A);
    
    % 去掉中心点
    Am = A - repmat(centroid_A, 1, num_cols);
    Bm = B - repmat(centroid_B, 1, num_cols);

    % 求协方差
    H = Am * Bm';

    % 找到旋转矩阵
    [U,S,V] = svd(H);
    R = V*U';

    if det(R) < 0
        fprintf("det(R) < R, reflection detected!, correcting for it ...\n");
        V(:,3) = V(:,3) * -1;
        R = V*U';
    end

    t = -R*centroid_A + centroid_B;
end