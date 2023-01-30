"""
Created on Thu Jan 26 13:49:58 2023
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
                          
            --> Newton-Rapson Method

Perhaps the most widely used of all root-locating formulas is the Newton-Raphson equation. 
If the initial guess at the root is xi, a tangent can be extended from the point[xi, f (xi)].
The point where this tangent crosses the x axis usually represents an improved estimate of
the root.

P.S. See the figures for more details.
=============================================================================================
"""
"""
Problem: Use Newton-Raphson method to estimtate the root of f(x) = e^{−x} − x, 
employing an initial guess of x_0 = 0.

"""
import math
import numpy as np
import matplotlib.pyplot as plt

x_i = 1e-10
counter = 0
while counter < 100:
  counter = counter + 1
  # compute the main function
  f = math.exp(-x_i) - x_i
  # compute the derivative function
  f_prime = -math.exp(-x_i) - 1
  
  x_ii = x_i - f/f_prime
  # percentage error
  delta_x = (x_ii - x_i)/x_i*100
  x_i = x_ii
  
  print("The percentage error %.2f" % delta_x)
  if delta_x < 1e-6:
    print("The total number of iterations is %.0f" % counter)
    print("The root of the given function is %.4f" % x_i)
    break


# visualize the solution
f = np.zeros(100)
f_prime = np.zeros(100)
x = np.zeros(100)
incr = x_i/50
for i in range(0, 100, 1):
  x[i] = i*incr
  f[i] = math.exp(-i*incr) - i*incr
  f_prime[i] = -math.exp(-i*incr) - 1
  
fig,axes = plt.subplots(nrows=1,ncols=2)
# subplot 1 - main function
axes[0].plot(x,f)
axes[0].plot(x_i,math.exp(-x_i) - x_i,'*r')
axes[0].grid()
axes[0].set_xlabel("x")
axes[0].set_ylabel("f")
# subplot 2 - derivative functiom
axes[1].plot(x,f_prime)
axes[1].plot(x_i,-math.exp(-x_i) - 1,'*r')
axes[1].grid()
axes[1].set_xlabel("x")
axes[1].set_ylabel("f_prime")
plt.tight_layout()
