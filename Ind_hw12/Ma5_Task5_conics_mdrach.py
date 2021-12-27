"""
===============================================================================
ENGR 13300 Fall 2021

Program Description: plots a parabola, circle, hyperbola, and elipse

Assignment Information
    Assignment:     Ind HW12
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
import matplotlib.pyplot as plt
import numpy as np
theta = np.linspace(0,2*np.pi,100)


plt.figure(figsize=(16,8))
plt.subplot(221)
#theta = np.linspace(0,2*np.pi,100)
x = 5*np.cos(theta)+2
y = 5*np.sin(theta)-3

plt.plot(x,y)
plt.grid(True)
plt.axis('square')
plt.title('Circle')



plt.subplot(222)
x = np.linspace(-8,8,100)
y = .1*(np.power(x,2))

plt.plot(x,y)
plt.grid(True)

plt.title('Parabola')




plt.subplot(223)
#theta = np.linspace(0,2*np.pi,100)

x=15*np.cos(theta)
y=6*np.sin(theta)

plt.plot(x,y)
plt.axis('scaled')

plt.grid(True)
plt.title('Eclipse')


plt.subplot(224)
x = np.linspace(-10,10,100)

ypos = np.sqrt(1+(np.power(x,2)/4))
y_neg = -1*ypos

plt.plot(x,ypos,x,y_neg)

plt.grid(True)
plt.title('Hyperbola')



plt.show()