"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
    Creates a program that adds up 4 random floats, that have up to 3 decimal points
    Then converts them into a fraction, with a denominator up to 100 and then adds up the fractions

Assignment Information
    Assignment:     Ind HW5 - PY 1
    Author:         Maximilian Drach, mdrach@purdue.edu 
    Team ID:        LC5 - 07
    
ACADEMIC INTEGRITY STATEMENT
I have not used source code obtained from any other unauthorized
source, either modified or unmodified. Neither have I provided
access to my code to another. The project I am submitting
is my own original work.
===============================================================================
"""
import random
from fractions import Fraction

def main():

    #creates a seed, which ties all the random values to the input integer
    seed = random.seed(int(input("Enter a seed: ")))



    #creates an empty list
    num_list = []
    num_list_frac = []
    for i in range(4):
        #round(x,3) -> the 3 rounds to 3 decimal places
        #random.uniform(0,100) -> outs puts a random number from 0-100
        num_list.append(round(random.uniform(0, 100),3))
        
        
        #creates a list of the fractions
        num_list_frac.append(Fraction(num_list[i]).limit_denominator(100))
        
    #names of the random list
    rand_num_names = ["First ", "Second ", "Third ", "Fourth "]

    #outputs the list of random numbers
    for i in range(4):
        print(rand_num_names[i] + "Random Number : " + str(num_list[i]))
        
    sum_dec = 0
    sum_frac = 0
    for i in range(4):
        #adds up the decimals
        sum_dec += num_list[i]
        #adds the factions after they have had their denomitor limited
        sum_frac += Fraction(num_list[i]).limit_denominator(100)

    #outputs all the answers as a decimal and round the decimal to 3 places
    print("Sum from decimals: " + str(num_list[0]) + " + " + str(num_list[1]) + " + " + str(num_list[2]) + " + " + str(num_list[3]) + " = " + str(round(sum_dec, 3)))
    #outputs all the answers as fraction and limit the denominator to under 100
    print("Sum from fractions: " + str(num_list_frac[0]) + " + " + str(num_list_frac[1]) + " + " + str(num_list_frac[2]) + " = " + str(Fraction(sum_frac).limit_denominator(100)))

if __name__ == '__main__':
    main()



