"""
Created on Fri Jan 27 13:47:03 2023

@author: utkucaylan

=============================================================================================
Numberical Methods 
    --> Roots of Equations (i. Bracketing ii. Open iii. Roots of Polynomials)
        --> Open Methods: Only a single starting value of x is required
                          i.   Simple Fixed-Point Iteration
                          ii.  Newton Rapson Method
                          iii. Secant Method
                          iv.  Brent`s Method 
                          v.   Multiple Roots
                          vi.  Systems of Nonlinear Equations
                          
            --> Simple Fixed-Point Iteration
            
The computer algorithm for fixed-point iteration is extremely simple. It consists of a loop
to iteratively compute new estimates until the termination criterion has been met. Figure
presents pseudocode for the algorithm. Other open methods can be programmed in a similar
way, the major modification being to change the iterative formula that is used to compute
the new root estimate.

P.S. See the figures for more details.
=============================================================================================
"""

"""

Problem: Use simple fixed-point iteration to locate the root of f(x) = e^{−x} − x

"""
import math
import numpy as np



x_i = 1e-10
counter = 0
while counter < 100:
  counter = counter + 1
  # compute the main function
  x_ii = math.exp(-x_i) 

  # percentage error
  delta_x = np.abs((x_ii - x_i)/x_i*100)
  x_i = x_ii
  
  print("The percentage error %.2f" % delta_x)
  if delta_x < 1e-6:
    print("The total number of iterations is %.0f" % counter)
    print("The root of the given function is %.4f" % x_i)
    break
