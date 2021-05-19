calib_gui
open calib_gui

Tc_12
Rc_12

aa= imread('0000_depth.png')

figure,imshow(aa,[])

load Calib_Results

x_1
figure,imshow(I_1)
figure,imshow(I_1,[])
hold on

plot(x_1(1,:),x_1(2,:),'*r')
plot(x_1(2,:),x_1(1,:),'*g')
I2 = imread('0000_depth.png');
I2 = double(I2)

size(I2)

size(I_1)


mm = round(x_1);
num = size(mm,2);
dp = zeros(1,num);
for k = 1:num
    dp(:,k) = I2(mm(2,k),  mm(1,k));
end

dp


