"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
    Outputing total capcity wiht the 1st capacitor being the input of the user and the 2nd capacitor being sqrt(2.72*e)
    Must oput for both parallel and series
Assignment Information
    Assignment:     Ind HW5 - PY 1
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


def main():
    #gets input form the user about the first capacity
    capa_1 = float(input("Input the first capacitor value [\u00b5F]: "))
    capa_2 = float(m.sqrt(2.72)*m.e)#gets the second capaity
    capa_2_round = round(capa_2, 1)#rounds the 2nd capacity

    strType = 'Type'
    strFirst = 'First'
    strSecond = 'Second'
    strEC = 'Equivalent Capacitance'
    strP = 'Parallel'
    strS = 'Series'
    str_unit = '\u00b5F'

    #adds up the capacities and rounds to the nerest decimal
    capa_parallel = round((capa_1 + capa_2), 1)
    #adds up the capacities^-1 and the gets that sum then does ^-1 again. then it rounds that number
    capa_series = round(((capa_1**-1 + capa_2**-1)**-1),1)

    sen1 = f'{strType}              {strFirst}         {strSecond}         {strEC}'
    sen2 = f'{strP}           {capa_1} {str_unit}        {capa_2_round} {str_unit}          {capa_parallel} {str_unit}'
    sen3 = f'{strS}             {capa_1} {str_unit}        {capa_2_round} {str_unit}          {capa_series} {str_unit}'
    print(sen1)
    print(sen2)
    print(sen3)


if __name__ == '__main__':
    main()

