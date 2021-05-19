Xw;
mm = round(x_1);
num = size(mm,2);
dpx = zeros(1,num);
for k = 1:num
    dpx(:,k) = Xw(mm(2,k),  mm(1,k));
end
dpx

Yw;
mm = round(x_1);
num = size(mm,2);
dpy = zeros(1,num);
for k = 1:num
    dpy(:,k) = Yw(mm(2,k),  mm(1,k));
end
dpy

Zw;
mm = round(x_1);
num = size(mm,2);
dpz = zeros(1,num);
for k = 1:num
    dpz(:,k) = Zw(mm(2,k),  mm(1,k));
end
dpz