%���P_dp=RT_matrix*P_world
%% ---ͨ��α�������С���˷�---%%
%��ʽ���߶�����inv��A��
%���ۺ���J=min(||RT_matrix*P_world-P_dp||^2)
%P_dp'=P_world'*RT_matrix'
%�ȼ�ΪP_d=P_w*RT_m
%������2021.4.18
function RT_matrix = solve_RT_matrix(P_dp,P_world)
P_w = P_world';
P_d = P_dp';
judge = det(P_w'*P_w);
%% InvA=(ATA)-1AT
RT_m1 = inv(P_w'*P_w)*P_w'*P_d;
%% SVD�ֽ���α��
 [U,S,V] = svd(P_w); % P_w = U*S*V'
 T=S;
 T(find(S~=0)) = 1./S(find(S~=0));
 sInv = V * T' * U';
 RT_m2 = sInv*P_d;
%% qr
[Q,R] = qr(P_w);
InvR =  inv(R'*R)*R';
qInv =InvR*Q';
RT_m3=qInv*P_d;
RT_matrix = [RT_m1';0 0 0 0;RT_m2';0 0 0 0;RT_m3';0 0 0 0];
end

