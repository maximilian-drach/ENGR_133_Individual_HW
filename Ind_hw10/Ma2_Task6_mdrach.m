%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: given the vector v, it sorts it by decsending and
% ascending
%
%
%
% Assignment Information
%   Assignment:     Ind HW7 - MA2
%   Author:         Maximilian Drach, mdrach@purdue.edu
    
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
v = [10 5 1 8 -9 0 2 3];


%% ____________________
%% CALCULATIONS
%copies the vector v to v1,v2
v1=v;
v2=v;
%gets the length of v
len_v = length(v);
%creates a new vector with zeros
desc_v = linspace(0,0,len_v);


for x = 1:len_v
    %adds the max to the descending vector, then also gets the index location of
    %the max value in v1
    [desc_v(x), max_location]= max(v1(:));
    %sets the max value location to the min -1
    v1(max_location)=min(v1)-1;
    
end

%creates a new vector with zeros
asc_v = linspace(0,0,len_v);

for x = 1:len_v
    %adds the max to the ascending vector, then also gets the index location of
    %the min value in v2
    [asc_v(x), min_location]= min(v2(:));
    %sets the min value location to the max + 1
    v2(min_location)= max(v2)+1;
    
end
%% ____________________
%% OUTPUTS
fprintf('The vector v is: [');
fprintf('%d ',v(1:end-1));
fprintf('%d]\n\n', v(end));



fprintf('Vector sorted in descending order: \n')
fprintf('\t%d', desc_v);

fprintf('\nVector sorted in ascending order: \n');
fprintf('\t%d', asc_v);
fprintf('\n');


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.