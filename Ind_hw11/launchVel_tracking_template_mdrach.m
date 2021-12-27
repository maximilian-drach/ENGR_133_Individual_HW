%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This project calculates the velocity of rocket and
% graphs its results of its altitue, accleration, and veloctiy.
%

%
% Assignment Information
%   Assignment:     Ind HW10 - MA3
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
% Import data and separate into columns

%time
t = csvread("Data_RDAS.csv",1,0,[1,0,90,0]);
%altitude
alt = csvread("Data_RDAS.csv",1,1,[1,1,90,1]);
%acceleration
a = csvread("Data_RDAS.csv",1,2,[1,2,90,2]);
%acceleration in ft/s^2
a_fts = a*32.2;

%% ____________________
%% CALCULATIONS
%velocity vector
V = a_fts.';
%sets the first value to 0
V(1)=0;

% Initialize loop variables
for N = 2:1:length(a_fts)
    V(N) = V(N-1) + ((a_fts(N)+a_fts(N-1))/2) * (t(N)-t(N-1));
end

% Find the maximum velocity
[V_max, time_max_v] = max(V);
time_max_v = t(time_max_v);

%% ____________________
%% FIGURE DISPLAY
subplot(3,1,1);
plot(t,a_fts,'r');
xlabel('time(s)');
ylabel('accleration(ft/s^2)');
title('Accleration of the Rocket');


subplot(3,1,2);
plot(t,V,'b');
xlabel('time(s)');
ylabel('velocity(ft/s)');
title('Velocty of the Rocket');

subplot(3,1,3);
plot(t,alt,'g');
xlabel('time(s)');
ylabel('altitude(ft)');
title('Altitude of the Rocket');


%% ____________________
%% TEXT DISPLAY
fprintf('Maximum Launch Velocity is %f (ft/s) at %.3f (s)\n', V_max, time_max_v);

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.