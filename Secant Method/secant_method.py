"""
Created on Mon Jan 30 12:53:04 2023

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
                          
            --> Secant Method
            
A potential problem in implementing the Newton-Raphson method is the evaluation of the
derivative. Although this is not inconvenient for polynomials and many other functions,
there are certain functions whose derivatives may be extremely difficult or inconvenient to
evaluate. For these cases, the derivative can be approximated by a backward finite divided
difference.

P.S. See the figures for more details.
=============================================================================================
"""

"""

Problem: Use secant method to locate the root of f(x) = e^{−x} − x. Start
with initial estimates of x_{-1} = 0 and x_{0} = 1

"""
import math
import numpy as np



x_i = 0
x_ii = 1
counter = 0
while counter < 100:
  counter = counter + 1
  #function value at x_i
  f_i = math.exp(-x_i) - x_i
  #function value at x_ii
  f_ii = math.exp(-x_ii) - x_ii
  
  # compute the new root at x_iii
  x_iii = x_ii - (f_ii*(x_i-x_ii))/(f_i-f_ii) 

  # percentage error
  delta_x = np.abs((x_iii - x_ii)/x_ii*100)
  x_i = x_ii
  x_ii = x_iii
  
  print("The percentage error %.8f" % delta_x)
  if delta_x < 1e-6:
    print("The total number of iterations is %.0f" % counter)
    print("The root of the given function is %.4f" % x_iii)
    break

