"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
    This program gets integers as an input from the user
    Then it outputs the factorial of the inputs or error message if its not Normal Number or 0

Assignment Information
    Assignment:     Group HW3 - PY 3
    Author:         Maximilian Drach, mdrach@purdue.edu
                    Conor Gass, gass0@purdue.edu
                    David Gedgaud, dgedgaud@purdue.edu
                    Ashwin Limaye, limaye@purdue.edu
                    
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

factorial_input_str = input("Enter numbers whose factorials will be evaluated: ")

#gets the factorial inputs from the string and splits them by space
#then it puts them in a list called fact_ints
fact_ints = factorial_input_str.split(" ")

for i in fact_ints:
    #input the i into the factorial function, set equal to factorial_i
    
    #checks the the factorial exist and its a Normal number or 0
    if(i != False):
        print(f'The factorial of {i} is {factorial_i}')
    else:
        print(f'Error: factorial routine requires positive integers.')

