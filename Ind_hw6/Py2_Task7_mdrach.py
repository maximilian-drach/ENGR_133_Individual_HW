"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
    Outputs all the pressure and other information for a lab to make sure that everything is safe
    it geta tempiture and molar volume as an input

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
import Py2_Task7_functions_mdrach as pressure

def main():
    
    Temp = float(input("Input Initial Temperature in Kelvin: "))
    molar_volume =  float(input("Input molar volume in L/mol: "))
    a = 3.59
    b = 0.0427
    
    #gets the pressure of the system
    p = pressure.pressure(Temp, molar_volume, a, b)
    #makes a standard format for non-life threating pressures
    if(p < 100):
        print('\nInitial conditions:')
        print(f'Molar volume = {molar_volume} [L/mol]')
        print(f'Initial temperature = {Temp:.1f} [K]')
        print(f'Parameter a = {a} [L^2*atm/(mol^2)]')
        print(f'Parameter b = {b} [L/mol]')
        
        if(30 <= p <= 35):
            print(f'Resulting pressure = {p:.4f} [atm]')
            
            print("\nThe pressure is within the acceptable range")
        else:
            print(f'Initial resulting pressure = {p:.4f} [atm]\n')
            
            #gives the ideal tempiture, based on the pressure
            ideal_temp, ideal_pressure = pressure.temp_equlibrium(p, molar_volume, a, b)
            
            #tells the tempiture increase or decrease depending on the ideal temp output
            temp_increment = ideal_temp - Temp
            print(f'Required temperature increment for in-range pressure = {round(temp_increment, 2)} [K]')
            print(f'New temperature = {round(ideal_temp, 2)} [K]')
            print(f'New pressure = {ideal_pressure} [atm]')
    else:
        #this is for hurry code, and quickly outputs the pressure and the danger message
        print(f'\nPressure is {p} [atm]')
        
        print("\nError:999 - pressure at unacceptable levels. Danger imminent! Sound the alarm and run away to safety.")
        
    
if __name__ == '__main__':
    main()

