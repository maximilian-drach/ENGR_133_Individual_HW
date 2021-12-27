function Ma4_Task4_image_rotate_mdrach(image1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
%
% Function Call
%outputs a rotated image
%
% Input Arguments
%the inputs must be the name of the string of the image you wan to analze
% Output Arguments
% Assignment Information
%   Assignment:     HW12-Ma4
%   Author:         Maximilian Drach, mdrach@purdue.edu
%   Team ID:        LC5-07
%  	Contributor:    Name, login@purdue [repeat for each]
%   My contributor(s) helped me:	
%     [ ] understand the assignment expectations without
%         telling me how they will approach it.
%     [ ] understand different ways to think about a solution
%         without helping me plan my solution.
%     [ ] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%% ____________________
%% INITIALIZATION
image3 = image1;
[image2, cimage] =imread(image1);

images = zeros(size(image2,1),size(image2,2),3,2);
images = uint8(images);
images(:,:,:,1) = image2;


figure(1);
subplot(1,2,1);
imshow(images(:,:,:,1));
title('Color Original Image');

%% ____________________
%% CALCULATIONS
for i = 1:1:3
    images(:,:,i,2) = rgb2gray(image2);
end
subplot(1,2,2);
imshow(images(:,:,:,2));
title('Gray Original Image');


str1 = "Choose your color scheme?";
image_type = ["Color" "Grayscale"];
image_scheme = menu(str1, image_type);

str2 = "Choose your orientation";
image_or = ["90 degrees clockwise" "90 degrees counter-clockwise" "180 degrees rotation"]
image_rotation = menu(str2, image_or);

img_rot = 0; %degrees
if image_rotation == 1
    image3 = Ma4_Task4_90_clockwise_mdrach(images(:,:,:,image_scheme));
    img_rot = 90;
elseif image_rotation == 2
    image3 = Ma4_Task4_90_counterclockwise_mdrach(images(:,:,:,image_scheme));
    img_rot = -90;
else
    image3 = Ma4_Task4_180_mdrach(images(:,:,:,image_scheme));
    img_rot = 180;
end

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS\
figure(2);
imshow(image3);
title(['Image Rotated ', num2str(img_rot), ' degrees']);
%% ____________________
%% COMMAND WINDOW OUTPUT



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.