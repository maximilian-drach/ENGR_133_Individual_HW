function image2 = Ma4_Task4_90_counterclockwise_mdrach(image1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
%
% Function Call
%outputs a 90 degrees counterclockwise rotated image
%
% Input Arguments
%the inputs must be an image array 
% Output Arguments
%outputs an array
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
%% INITIAL
% image2 = zeros(size(image1,2), size(image1,1), 3);
% image2 = uint8(image2);
% 
% %the lenght of the column
% lengthy = size(image1,2);
% 
% %counter clockwise
% for i = 1:1:size(image1,1)
%     for j = size(image1,2):-1:1
%         %transposes the matrix, and reverse the row values
%         image2(abs(j-lengthy-1),i,:)= image1(i,j,:);
%     end
% end

image2 = rot90(image1);

%% ____________________
%% CALCULATIONS

%% FORMATTED TEXT & FIGURE DISPLAYS



%% ____________________
%% COMMAND WINDOW OUTPUT



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.