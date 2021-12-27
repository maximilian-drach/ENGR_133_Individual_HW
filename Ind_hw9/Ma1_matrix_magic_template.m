%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This is a demonstration of matrix opperations in
% matlab
%
% Assignment Information
%   Assignment:     Ind HW9 - MA1
%   Author:         Maximilian Drach, mdrach@purdue.edu
%   Team ID:        LC5-07 
%  	
%   Contributor:    Name, login@purdue [repeat for each]
%   My contributor(s) helped me:	
%     [ ] understand the assignment expectations without
%         telling me how they will approach it.
%     [ ] understand different ways to think about a solution
%         without helping me plan my solution.
%     [ ] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%   Note that if you helped somebody else with their code, you
%   have to list that person as a contributor here as well.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
A = zeros(4);%makes a matrix full of zeros
vals = [1 3 2 4;5 6 7 8;9 10 11 12;13 15 14 16];

%% ____________________
%% COPY & CONCATENATION
M = vals(2:3,2:3);
C = vals(1,2:3);
D = vals(4,2:3);
E = [vals(1), D, vals(1,4)];%makes a vecotr of the values
F = [vals(4,1), C, vals(4,4)];

%% ____________________
%% REPLACE MATRIX ELEMENTS
A(1,:) = E;
A(2:3,2:3) = M;
A(4,:) = F;


A(2,1) = vals(3,4);
A(3,1) = vals(2,4);
A(2,4) = vals(3,1);
A(3,4) = vals(2,1);
%% ____________________
%% FINAL MATRIX
X = sum(A);%sums the col values
G = [A;X];%adds the x vector the bottom A 


Y = sum(G,2);%sums the row values
H = [G Y];%puts the Y vector to the right of the G matrix

H(end,end) = H(1,1)+H(2,2)+H(3,3)+H(4,4);%add the sum of the first 4 diagonal values to the (end,end)

%% ____________________
%% FORMATTED TEXT DISPLAY 
format_center = 'After doing step 8.e, the value in the center of H is %i.\n';
format_upper = 'After doing step 8.e, the value in the upper left of H is %i, and the value in the upper right of H is %i.\n';
format_lower = 'After doing step 8.e, the value in the lower left of H is %d, and the value in lower right of H is %d.\n';
fprintf(format_center,H(3,3))
fprintf(format_upper, H(1,1), H(1,end))
fprintf(format_lower, H(1,end), H(end,end))

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have we provided
% access to our code to another. The script we are submitting
% is our own original work.
