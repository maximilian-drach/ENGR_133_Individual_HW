%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: tells the saftest max volume for a tank given the inputs
% of the length and diameter, saftest volume percentage, and fluid
% increment
%
%
%
% Assignment Information
%   Assignment:     Ind HW6 - MA2
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
 
 tank_length = 20.5; %meters
 tank_diameter = 4.1; %meters

 %fluid heigth increment
 fhi = .25; %meters
 safe_capacity = .8; %80 precent


%% ____________________
%% CALCULATIONS
tank_radius = tank_diameter/2; %meters


%cylinder_center_length
ccl = tank_length-tank_diameter; %meters

%gets the area of the cylinder part
max_cylinder = (tank_radius^2)*ccl*pi;
%2 semi-spheres equal a full sphere, so i just used the sphere volume
%formula
max_sphere = (4/3)*pi*(tank_radius^3);
%got the theoreitcal max volume
theoretical_max_vol = max_sphere + max_cylinder;%meters^3

%got the actual safe volume using the saftey capacity percentage
max_safe = safe_capacity*(theoretical_max_vol);%meters^3

%created the height vector
h = 0:.25:tank_diameter;

%set the fluid volume and volume tolerance to 0
fluid_volume = zeros(floor(tank_diameter/fhi));
vol_tol = 0;

%started the index counter
n=0;

while fluid_volume < max_safe-vol_tol
    %increment counter
    n = n+1;
    %gets the fluid volume from the heigth vector
    term1 = (pi*(h(n))^2)*((3*tank_radius)-h(n))/3;
    term2 = (tank_radius^2)*(acos((tank_radius-h(n))/tank_radius));
    term3 = (tank_radius-h(n))*sqrt((2*tank_radius*h(n)) - (h(n)^2));
    fluid_volume(n) = term1 + ccl*(term2-term3);

    %replace the hight with the radius+(.5*the fluid height increment)
    h(n) = tank_radius+(.5*fhi);
    %re-does the fluid volume for the volume tolerenace
    term1 = (pi*(h(n))^2)*((3*tank_radius)-h(n))/3;
    term2 = (tank_radius^2)*(acos((tank_radius-h(n))/tank_radius));
    term3 = (tank_radius-h(n))*sqrt((2*tank_radius*h(n)) - (h(n)^2));
    tol_term1 = term1 + ccl*(term2-term3);

    %replace the hight with the radius-(.5*the fluid height increment)
    h(n) = tank_radius-(.5*fhi);
    %re-does the fluid volume for the volume tolerenace
    term1 = (pi*(h(n))^2)*((3*tank_radius)-h(n))/3;
    term2 = (tank_radius^2)*(acos((tank_radius-h(n))/tank_radius));
    term3 = (tank_radius-h(n))*sqrt((2*tank_radius*h(n)) - (h(n)^2));
    tol_term2 = term1 + ccl*(term2-term3);
    
    %gets the volume tolerance by subtracting term1 form term2
    vol_tol = tol_term1-tol_term2;
end

%% ____________________
%% OUTPUTS
fprintf('The number of iterations is %d\n', n);
fprintf('The safe fill volume is %f\n', max_safe);
fprintf('The final fluid volume is %f\n', fluid_volume(n));


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.