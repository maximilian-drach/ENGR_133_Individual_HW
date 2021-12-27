"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
    contains the functions that output the pressure and ideal tempiture from a given pressure
Assignment Information
    Assignment:     Ind HW7 - PY 2
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
R = 0.0820573661
def pressure(Temp, molar_volume, a, b):
    #calculate the pressure
    p = ((R*Temp)/(molar_volume-b))-(a/(molar_volume**2))
    return p
def temp_equlibrium(pressure, molar_volume, a, b):
    #take the pressure given and outputs the temp equalibirum in the range
    if(pressure < 30):
        #rearange the ideal gas law equation, with 30 as ideal pressure
        temp_equalibrium = ((molar_volume-b)*(30 + (a/(molar_volume**2))))/R
        ideal_p = 30
    else:
        #rearange the ideal gas law equation, with 35 as ideal pressure
        temp_equalibrium = ((molar_volume-b)*(35 + (a/(molar_volume**2))))/R
        ideal_p = 35
    
    return temp_equalibrium, ideal_p

def main():
    pass
if __name__ == '__main__':
    main()