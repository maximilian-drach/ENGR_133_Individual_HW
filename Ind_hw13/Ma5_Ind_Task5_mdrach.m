%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: 
%plots out the data for decibles per power usage, in log, exponent, power
%and linear
%
%
% Assignment Information
%   Assignment:     Ind HW13 - MA5
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
data = csvread("Data_speaker_volume_power.csv", 2,0);
SPK3 = data(:,2);
SPK4 = data(:,3);
Power = data(:,1);
%% ____________________
%% CALCULATIONS

%% ____________________
%% OUTPUTS
%title('Power(mW) vs Volume(dB) for SPK3 & SPK4');
subplot(2,2,1);

plot(Power,SPK3, 'r*-');
hold on 
plot(Power, SPK4, 'k^-');
title('linear scale x, linear scale y');
legend('SPK3', 'SPK4', 'Location', 'southeast');
hold off


subplot(2,2,2);
semilogy(Power,SPK3, 'r*-');
hold on 
semilogy(Power, SPK4, 'k^-');
title('linear scale x, log scale y');
legend('SPK3', 'SPK4', 'Location', 'southeast');
hold off

subplot(2,2,3);
semilogx(Power,SPK3, 'r*-');
hold on 
semilogx(Power, SPK4, 'k^-');
title('log scale x, linear scale y');
legend('SPK3', 'SPK4', 'Location', 'southeast');
hold off


subplot(2,2,4);
loglog(Power,SPK3, 'r*-');
hold on 
loglog(Power, SPK4, 'k^-');
title('log scale x, log scale y');
legend('SPK3', 'SPK4', 'Location', 'southeast');
hold off
sgtitle('Power(mW) vs Volume(dB) for SPK3 & SPK4');
%% ____________________
%% ANALYSIS
%it appears that fuction follows an exponential scalling since the graphed
%looked most linear, when the x-axis was log scaled but the y-axis was
%linear.

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.