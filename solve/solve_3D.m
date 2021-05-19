function [R,t] = solve_3D(A, B)
%�ο�http://nghiaho.com/?page_id=671
%���P_dp=RT_matrix*P_world
    %�ҵ����ĵ�

    centroid_A = mean(A, 2);
    centroid_B = mean(B, 2);
    [num_rows, num_cols] = size(A);
    
    % ȥ�����ĵ�
    Am = A - repmat(centroid_A, 1, num_cols);
    Bm = B - repmat(centroid_B, 1, num_cols);

    % ��Э����
    H = Am * Bm';

    % �ҵ���ת����
    [U,S,V] = svd(H);
    R = V*U';

    if det(R) < 0
        fprintf("det(R) < R, reflection detected!, correcting for it ...\n");
        V(:,3) = V(:,3) * -1;
        R = V*U';
    end

    t = -R*centroid_A + centroid_B;
end