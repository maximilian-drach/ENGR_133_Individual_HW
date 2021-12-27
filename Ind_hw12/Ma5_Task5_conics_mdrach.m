%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: Tplots a parabola, circle, hyperbola, and elipse
%
% Assignment Information
%   Assignment:     Ind HW12 - MA4
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


%% ____________________
%% CALCULATIONS
subplot(2,2,1);
theta = linspace(0,2*pi,100);
x = 5*cos(theta)+2;
y = 5*sin(theta)-3;

plot(x,y);
title('Circle');
axis square;
xlim([-4,8])
ylim([-9,3])
grid on;

subplot(2,2,2);
x = linspace(-8,8,100);
y = .1*(x.^2);
plot(x,y);
title('Parabola');
grid on;

subplot(2,2,3)
x=15*cos(theta);
y=6*sin(theta);
plot(x,y);
title('Ellipse');
axis square;
grid on;

subplot(2,2,4)
x = linspace(-10,10,100);
ypos = sqrt((1+((x.^2)/4)));
y_neg = -1 * ypos;
plot(x,ypos,x,y_neg);
title('Hyperbola');
grid on;

%% ____________________
%% FIGURE DISPLAY

%% ____________________
%% TEXT DISPLAY


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.