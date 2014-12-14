%% Setup

Template = imread('Template.jpg');

Image = imread('TestImage2.png');

bwTemplate = im2bw(Template);
bwImage = im2bw(Image,0.1);

% imshow(bwTemplate)
% imshow(bwImage)

%% Noise Detection
% type = 'gaussian';
% % NT = imnoise(Template,type);
% NI = imnoise(Image, type);
% % 
% % subplot(2,1,1)
% % imshow(NT)
% % subplot(2,1,2)
% imshow(NI)
% title(type)
% figure
% 
% % type = 'localvar';
% % NT = imnoise(Template,type);
% % NI = imnoise(Image, type);
% % 
% % subplot(2,1,1)
% % imshow(NT)
% % subplot(2,1,2)
% % imshow(NI)
% % title(type)
% % figure
% 
% 
% type = 'poisson';
% NT = imnoise(Template,type);
% NI = imnoise(Image, type);
% 
% 
% subplot(2,1,1)
% imshow(NT)
% subplot(2,1,2)
% imshow(NI)
% title(type)
% figure
% 
type = 'speckle';
% NT = imnoise(Template,type);
NI = imnoise(Image, type,20);
% 
% 
% subplot(2,1,1)
% imshow(NT)
% subplot(2,1,2)
imshow(NI)
% title(type)
% figure
% 
% type = 'speckle';
% NT = imnoise(Template,type);
% NI = imnoise(Image, type);
% 
% 
% subplot(2,1,1)
% imshow(NT)
% subplot(2,1,2)
% imshow(NI)
% title(type)
% 
%% Edge Detection
% 
% [gTemplate ,t ] = edge(bwTemplate,'Canny');
% [gImage ,t ] = edge(bwImage,'Canny');
% 
% imshow(gTemplate)
% figure
% imshow(gImage)

% Hough Transform
% 
% [HTemplate, t, r] = hough(gTemplate);
% [HImage,t,r] = hough(gImage);
% figure
% imshow(HTemplate, [], 'XData', t, 'YData', r )
% figure
% imshow(HImage, [], 'XData', t, 'YData', r )
% 
% detect Hough peaks
% numpeaks = 4; %Number of peaks to look for
% P = houghpeaks(HImage, numpeaks)  
% 
% draw peaks over Hough transform
% don't replace the picture when we start to draw
% hold on; 
% plot( t( P(:,2) ), r( P(:,1) ), 's', 'color', 'green'); 
% 
% Random
% 
% RGB = imread('Image.jpg');
% 
% RGBTemp = imread('Template.jpg');
% 
% Convert to intensity.
% I  = rgb2gray(RGB);
% ITemp = rgb2gray(RGBTemp);
% 
% Extract edges.
% BW = edge(I,'canny');
% [H,T,R] = hough(BW,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
% 
% BWTemp = edge(ITemp,'canny');
% [HTemp,TTemp,RTemp] = hough(BWTemp,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
% 
% Display the original image.
% figure
% imshow(BW);
% title(' Image');
% 
% Display the template image.
% figure
% imshow(BWTemp);
% title('Image Template');
% 
% Display the Hough matrix of Image.
% figure
% imshow(imadjust(mat2gray(H)),'XData',T,'YData',R,...
%       'InitialMagnification','fit');
% title('Hough Transform of Image');
% xlabel('\theta'), ylabel('\rho');
% axis on, axis normal, hold on;
% colormap(hot);
% detect Hough peaks
% numpeaks = 10; %Number of peaks to look for
% P = houghpeaks(H, numpeaks)  
% 
% draw peaks over Hough transform
% don't replace the picture when we start to draw
% hold on; 
% plot( T( P(:,2) ), R( P(:,1) ), 's', 'color', 'green'); 
% hold off
% Display the Hough matrix of template.
% figure
% imshow(imadjust(mat2gray(HTemp)),'XData',TTemp,'YData',RTemp,...
%       'InitialMagnification','fit');
% title('Hough Transform of Template');
% xlabel('\theta'), ylabel('\rho');
% axis on, axis normal, hold on;
% colormap(hot);
% detect Hough peaks in Template
% PTemp = houghpeaks(HTemp, numpeaks)  
% 
% draw peaks over Hough transform
% don't replace the picture when we start to draw
% hold on; 
% plot( TTemp( PTemp(:,2) ), RTemp( PTemp(:,1) ), 's', 'color', 'green'); 
% hold off
% 
% [maxval,maxind] = max(HTemp);
% medval = median(HTemp);
% 
% [p]=polyfit(1:maxind-5,HTemp(1:maxind-5),2);
% 
% if maxval<3*medval
%     'Triangle'
% elseif  p(3)>100
%     'Square'
% else
%    'Round'
% end