"""
Created on Wed Feb 1 12:15:04 2023

@author: utkucaylan

This is an implementation of Brent's Method, a root-finding algorithm.
Brent's Method is used to find the root of a function f(x) within a given interval [xl, xu].


The function brentsmethod(xl, xu) is the implementation of Brent's Method, 
which takes in the lower and upper bounds of the interval as input parameters. 
The function returns the root of the given function f(x) within the given interval.

Generally considered the best of the rootfinding routines here. It is a safe version
of the secant method that uses inverse quadratic extrapolation. Brent’s method combines
root bracketing, interval bisection, and inverse quadratic interpolation. It is sometimes
known as the van Wijngaarden-Dekker-Brent method. Brent (1973) claims convergence is
guaranteed for functions computable within [a,b].

The function starts by defining some variables such as eps, tol, a, b, fa, fb, c, fc, d, and e. 
These variables are used in the while loop, which runs until the root is found or
the maximum number of iterations is reached.

The while loop consists of several conditions that perform different operations based on the values 
of fa, fb, and fc. These operations include secant method, inverse quadratic interpolation,
and bisection method. The final result of the function is the root of the given function
within the given interval.



Problem: Find the root of the function f(x) = (x+3)*(x-1)**2 using Brent's Method.
         Initial interval = [-4,4/3]
"""

import numpy as np
from scipy import optimize
import matplotlib.pyplot as plt

xl = -16 #lower bound
xu = 20 #upper bound

def f(x):
    return (x+15)*(x-1)**2

x = range(xl, xu)
y = [f(i) for i in x]
plt.plot(x, y)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph of x vs f(x)')
plt.grid(True)
plt.show()

def brentsmethod(xl, xu):
    eps = 2.22044604925031e-16
    tol = 0.000001
    a = xl
    b = xu
    fa = f(a)
    fb = f(b)
    c = a
    fc = fa
    d = b - c
    e = d
    counter = 0
    
    # While loop to find the root of the function
    while True:
        counter = counter + 1
        if counter > 10000:
            print("Maximum number of terations is reached")
            break
        print("Iteration = %.0f" %counter)
        print("b = %.0f" %b)
        print("fa = %.0f" %fa)
        print("fb = %.0f" %fb)
        if fb == 0:
            break
        if fa * fb > 0:
            a = c
            fa = fc
            d = b - c
            e = d
        if np.abs(fa) < np.abs(fb):
            c = b
            b = a
            a = c
            fc = fb
            fb = fa
            fa = fc 
        m = 0.5 * (a + b)                   #termination test and possible exit
        tol = 2 * eps * max(np.abs(b), 1) 
        if np.abs(m) <= tol  or fb == 0:
            break
        if np.abs(e) > tol and np.abs(fc) > np.abs(fb):
            s = fb / fc
            if a == c:                      #Secant Method
                p = 2 * m * s
                q = 1 - s
            else:                           #Inverse quadratic interpolation
                q = fc / fa
                r = fb / fa
                p = s * (2 * m * q * (q - r) - (b - c) * (r - 1))
                q = (q - 1) * (r - 1) * (s - 1)
            if p > 0:
                q = -q
            else:
                p = -p
            if 2 * p < 3 * m * q - np.abs(tol * q) and p < 0.5 * e * q:
                e = d
                d = p / q
            else:
                d = m
                e = m
        else:                                #Bisection Method
            d = m
            e = m
        c = b
        fc = fb
        if np.abs(d) > tol:
            b = b + d
        else:
            b = b + np.sign(b - a) * tol
        fb = f(b)
    
    return b



print("The root of the given function %.8f" % brentsmethod(xl,xu))
print("===============================================================================")
print("The root of the given function is found below using Python's brentq function")
print("The root of the given function: %.8f" % optimize.brentq(f, xl, xu))
print("===============================================================================")
