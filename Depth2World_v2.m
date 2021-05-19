function [Xw, Yw, Zw] = Depth2World_v2(fileName, maxDepth)
% Extrinsic parameters of the depth camera. These values are collected
%from the dicussion forum.
fx=367.286994337726;        % Focal length in X and Y
fy=367.286855347968;
cx=255.165695200749;        % Principle point in X and Y
cy=211.824600345805;
k1=0.0914203770220268;
k2=-0.269349746097515;
k3=0.0925671408453617;
p1=0;
p2=0;

% Read the depth image:
% Ex: fileName = 'depthImg_0018.ppm';
imgPixels = imread(fileName);
% imgPixels = imgPixels (:, end:-1:1);
x3D = zeros(size(imgPixels));
y3D = zeros(size(imgPixels));
z3D = zeros(size(imgPixels));

% Evaluate coordinates from depth image:
[maxR, maxC] = size(imgPixels);
for r=1:maxR
    for c=1:maxC
        % The depth value is equal to intensity. But it is stored in mm.
        d = double(imgPixels(r,c));
        z3D(r,c) = d;
        x3D(r,c) = (c - cx) * z3D(r,c) / fx;
        y3D(r,c) = (r - cy) * z3D(r,c) / fy;
    end
% [Xw,Yw,Zw]=[x3D,y3D,z3D]
Xw = x3D;
Yw = y3D;
Zw = z3D;
end