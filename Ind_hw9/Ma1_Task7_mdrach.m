%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: Add the problem description here and delete this 
%                      line. 
%
%
%
% Assignment Information
%   Assignment:     Ind HW9 - MA1
%   Author:         Maximilian Drach, mdrach
%                   
%   Team ID:        LC5 - 07
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
Amatrix = [2 5 8 5;10 9 1 4;6 3 2 10];

Bvector = Amatrix(1,:)%this takes the entire first row values of Amatrix and calls it Bvector
Cvector = Amatrix(2,:)%this takes the entire 2nd row values of Amatrix and calls it Cvector
Dvector = Amatrix(:,3)%this takes the entire 3nd columns values of Amatrix and calls it Dvector
sort(Dvector)%puts the values of Dvector in ascending order
Amatrix(3)= 30; Amatrix%replace the first column, third row with 30. Then it returns the Amatrix
Evector = linspace(1,25,4)%reutrns 1-25 devived into 4 equal pieces
Fvector = Evector*5%times the Evector by 5, then sets that variable to Fvector
Amatrix(1:2)%returns the first column, and the 1st & 2nd rows of the Amatrix values
Amatrix(2:3)%returns the first column, and the 2nd & 3rd rows of the Amatrix values
Amatrix(1:2,2:3)%reuturns the 2nd & 3rd column, and the 1st& 2nd row values from the Amatrix










%% ____________________
%% CALCULATIONS


%% ____________________
%% OUTPUTS



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.