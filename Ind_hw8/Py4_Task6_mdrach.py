"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
   given a text file of step separated by a new line, it orders the steps
   then outputs that to a new file

Assignment Information
    Assignment:     Ind HW6 - PY 4
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
file = open('Py4_Task6_input.txt', 'r')
text = file.readlines()
#puts the list of lines into enmerate, so to list them
order = enumerate(text)
#turns the enumerate into a list
order = list(order)
file_steps = open('Py4_Task6_ouput.txt', 'w')

for i in range(len(order)):
    #creates the string output
    string = f'Step {i+1}: {order[i][1]}'
    #writes the string output
    file_steps.write(string)

file_steps.close()

