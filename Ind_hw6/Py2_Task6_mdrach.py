"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
    given a n1 (first medium) and attack angle for the theta_1
   outputs the distance, critical angle and exit angle
1st we take the critical ange by asin(n2/n1)
2nd we get the exit angle by asin(n1*sin(theta_in)/n2)
3rd if there is an exit angle then we get the distance by d1*tan(theta_in) + d2*(exit_angle)

Assignment Information
    Assignment:     Ind HW6 - PY 2
    Author:         Maximilian Drach, mdrach@purdue.edu 
                    
    Team ID:        LC5 - 07
    
Contributor:    Name, login@purdue [repeat for each]
    My contributor(s) helped me:
    [ ] understand the assignment expectations without
        telling me how they will approach it.
    [ ] understand different ways to think about a solution
        without helping me plan my solution.
    [ ] think through the meaning of a specific error or
        bug present in my code without looking at my code.
    Note that if you helped somebody else with their code, you
    have to list that person as a contributor here as well.

ACADEMIC INTEGRITY STATEMENT
I have not used source code obtained from any other unauthorized
source, either modified or unmodified. Neither have I provided
access to my code to another. The project I am submitting
is my own original work.
===============================================================================
"""
import math as m

def calc_crit_angle(n1, n2):
    #gets the critical angle
    crit_angle = m.degrees(m.asin(n2/n1))
    return crit_angle
        
    
def calc_exit_angle(n1, n2, theta_in):
    
    #gets the exit angle
    theta_2 = m.degrees(m.asin(n1*m.sin(m.radians(theta_in))/n2))
    
    return theta_2
    
def calc_dist(d1, theta_1, d2, theta_2):
    
    #gets the light distance
    d3 = d1*m.tan(m.radians(theta_1)) + d2*m.tan(m.radians(theta_2))
    
    return d3


def main():
    #inputs the angle, in radian to make sure the math library doesnt act up
    theta_in = float(input("Enter the incoming angle in degrees: "))
    n1 = float(input("Enter the refractive index of medium 1 [unitless]: "))
    
    #sets the constant values
    n2 = 1.44
    d1 = 3.8
    d2 = 9.1
    
    #makes sure that the critical angle exsists
    if(n1>=n2):
        crit_angle = calc_crit_angle(n1, n2) #calculates critical angle
        print(f'For these two media, the critical angle is {round(crit_angle, 1)}\u00B0.')
        
    if((n1*m.sin(theta_in)/n2) <=1):
        #makes sure that theta_2 exist
        theta_2 = calc_exit_angle(n1, n2, theta_in) #calculates exit angle
        print(f'The light ray refracts with a leaving angle of {round(theta_2, 1)}\u00B0.')
        d3 = calc_dist(d1, theta_in, d2, theta_2)
        print(f'The transverse distance traveled by the light ray is {round(d3, 1)} cm.')
        
    else:
        #makes it if the exit angle doesnt exsit
        print("The incoming angle is larger than the critical angle.\nThis results in total internal reflection.")
    
    
if __name__ == '__main__':
    main()