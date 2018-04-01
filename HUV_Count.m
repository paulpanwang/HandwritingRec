function [ output_args ] = HUV_Count( input_args )
clc;clear;close all
x='B.png';
fontSize = 16;
rgbImage=imread(x);

figure;
imshow(rgbImage)
hsvImage = rgb2hsv(rgbImage);
% Extract out the H, S, and V images individually
hImage = 0.2990*rgbImage(:,:,1) + 0.5870*rgbImage(:,:,2) + 0.1140*rgbImage(:,:,3);
[hueCounts, hueBinValues] = imhist(hImage);
maxHueBinValue = find(hueCounts > 0, 1, 'last');
maxCountHue = max(hueCounts);
% bar(hueBinValues, hueCounts, 'r');

theta = hueBinValues*2*pi;
rho = hueCounts/maxCountHue;
figure;
for i=1:length(theta)
    polar([0,theta(i)],[0,rho(i)],'-g');
    hold on;
end
figure;
area(hueBinValues, hueCounts, 'FaceColor', 'r');
grid on;
% xlabel('Hue Value');
% ylabel('Pixel Count');
% title('Histogram of Image', 'FontSize', fontSize);



end

