%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This takes in lane width data and find the values
% that are <10. It also analizes the time of the speed of the traffic.
%
% Assignment Information
%   Assignment:     Ind HW11 - MA3
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
data = csvread('LaneWidth_TrafficSpeed.csv', 3,0);

%% ____________________
%% CALCULATIONS
[max_lane_width, location_max] = max(data(:,2));
location_max = data(location_max, 1);
[min_lane_width, location_min] = min(data(:,2));
location_min = data(location_min,1);

%where the lane width is less than 10 ft
Y = find(data(:,2)<10);

%is a vector of the mile maker values when lane width is less than 10 ft
Z = data(Y,1);

%fist mile marker
P = Z(1);
%last mile marker
Q = Z(end);

H1_avrg = linspace(0,0,size(data,2)-2);
H2_avrg = linspace(0,0,size(data,2)-2); 
H3_avrg = linspace(0,0,size(data,2)-2);

for i = 3:1:size(data,2)
    %find the average hours spent, on the range mile 145-P
    H1_avrg(i-2) = mean(data(1:Y(1),i));
    
    %find the average hours spent, on range P-Q
    H2_avrg(i-2) = mean(data(Y(1):Y(end),i));

    %find the average hours spent, on range P-Q
    H3_avrg(i-2) = mean(data(Y(end):end,i));
end

%plots the lane witdth to mile marker
plot(data(:,1),data(:,2), 'b');
xlabel('Mile Marker');
ylabel('Lane Width (ft)');
title('Lane Width (ft) over the Mile');
%While this maybe a problem, but generally it looks like most of the points
%between P and Q lie bellow 10 ft, but this may cause slight problem. It is
%not a signifigant problem, but should be taken into consideration for
%further data usage.


%gets the precentage of lane widths<10ft from PQ
PQ_lane_percent = 100-(length(Z)/length(data(Y(1):Y(end),2))*100); %'%'
%It seems around 5 percent of the lane widths are above 10ft, so this is
%not too signifigant, but enough that it could cause minor problems. This
%did not really change my answer above, but it certainly clarified my
%respose.



%% ____________________
%% OUTPUTS
fprintf('The max lane width is %f (ft) at mile marker %f\n',max_lane_width,location_max);
fprintf('The min lane width is %f (ft) at mile marker %f\n',min_lane_width,location_min);
fprintf('The mile marker for P is %f and the mile marker for Q is %f\n\n', P, Q);


fprintf('The average number of hours in each speed range from 145 to P is \n');
fprintf('> 65 mph	55~64 mph	45~54 mph	35~44 mph	25~34 mph	15~24 mph	0~14 mph\n')
fprintf('%f	',H1_avrg(1:end));
fprintf('\nThe average number of hours in each speed range from P to Q is \n');
fprintf('> 65 mph	55~64 mph	45~54 mph	35~44 mph	25~34 mph	15~24 mph	0~14 mph\n')
fprintf('%f	',H2_avrg(1:end));
fprintf('\nThe average number of hours in each speed range from Q to 146 is \n');
fprintf('> 65 mph	55~64 mph	45~54 mph	35~44 mph	25~34 mph	15~24 mph	0~14 mph\n')
fprintf('%f	',H3_avrg(1:end));

fprintf('\n\nThe precentage of data points betwen P and Q where the lane width is greater than 10 (ft) is %f\n',PQ_lane_percent);

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.