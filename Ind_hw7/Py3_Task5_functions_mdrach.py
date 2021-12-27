"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
   gets the summation approximation for the integral of sin(x^2)

Assignment Information
    Assignment:     Ind HW5 - PY 3
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


def anti_deriv_sinx2(n,x):
    #starts the summation as 0
    summation_total = 0
    #loops the summation values, specified by n
    for i in range(n+1):
        #this is summation formula for the integral of sin(x^2)
        summation = (m.pow(-1, i))*((m.pow(x,((4*(i)) + 3)))/(((4*(i) +3) * (m.factorial(((2*(i) + 1)))))))
        #sums up the past value of n and x in the series
        summation_total += summation
    
    return summation_total

def integral_output(n,a,b):
    #returns the integral of F(b) - F(a)
    return(anti_deriv_sinx2(n, b) - anti_deriv_sinx2(n, a))

def main():
    pass
if __name__ == '__main__':
    main()