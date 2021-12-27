"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
    The progrma in question estimates the area under the curve for sin(x^2), ie the integral.
    This program takes in 4 inputs from the user, lower and upper limit of integration, the ammount of decimals to go to and ammount of time to run the series
    

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
import Py3_Task5_functions_mdrach as functions

def main():
    #test if the inputs from the user is valid
    try:
        a = float(input("Enter the lower limit of integration: "))
    #checks if the value entered is validS\
    except ValueError:
        print("Error 1: Input integer or floating-point number")
        return
    try:
        b = float(input("Enter the upper limit of integration: "))
    except ValueError:
        print("Error 1: Input integer or floating-point number")
        return
    
    try:
       dec_places = int(input("Enter the number of decimal places for convergence: "))
       #checks a second case that isnt nenssisarily a value error, but that the inter must be >= 0,
       if dec_places < 0:
           print("Error 2: Input a positive integer")
           return
    except ValueError:
       print("Error 2: Input a positive integer")
       return

    try:
       max_terms = int(input("Enter the maximum number of terms: "))
       if max_terms < 0:
            print("Error 2: Input a positive integer")
            return
    except ValueError:
       print("Error 2: Input a positive integer")
       return
   
    
    #these values are use to test if the convergnec numbers have been equal 3 times in the series, ie the the convergence number
    sin2_approx_secondnth_term = 0
    sin2_approx_nth_term = 0
    sinx2_approx = 0
    
    #sets if convernge is true or not
    converge = False
    
    nth_term = 0
    print("\nApproximations:")
    #loop the values nth terms and outputs the answer from the integral
    for i in range(max_terms):
        #gets the sin(x^2) apprimation rounded to the inputed decimal place
        sinx2_approx = round(functions.integral_output(i, a, b), dec_places)
        print(f'n = {i}: sum = {sinx2_approx}')
        
        #has the condion if the loop has outputed the same values 3 times in a row, the we found the converge value
        if(sinx2_approx == sin2_approx_nth_term == sin2_approx_secondnth_term):
            nth_term = i
            converge = True
            break
        
        #replace the value of the old sin(x^2) to test the convergence conditional
        sin2_approx_secondnth_term = sin2_approx_nth_term
        sin2_approx_nth_term = sinx2_approx
        
    if(converge == False):
        print(f'\nError: The approximation did not converge to {dec_places} decimal places with only {max_terms} terms.')
    else:
        print(f'\nThe integral from {a} to {b} is estimated to be {sinx2_approx}.')
        print(f'Total number of terms: {nth_term + 1}')


    
if __name__ == '__main__':
    main()