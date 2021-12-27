function image2 = Ma4_Task4_180_mdrach(image1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
%
% Function Call
%outputs a 180 degrees rotated image
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
%% INITIALIZATION
image2 = zeros(size(image1,2), size(image1,1), 3);
%makes the array uint8, to store the clors
image2 = uint8(image2);


%% ____________________
%% CALCULATIONS
lengthx = size(image1,1);
lengthy = size(image1,2);

for i = size(image1,1):-1:1
    for j = size(image1,2):-1:1
        %reverse the y and x values and transposes the matrix
         image2(abs(i-lengthx-1), abs(j-lengthy-1), :)= image1(i,j,:);
    end
end
%% FORMATTED TEXT & FIGURE DISPLAYS



%% ____________________
%% COMMAND WINDOW OUTPUT



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.