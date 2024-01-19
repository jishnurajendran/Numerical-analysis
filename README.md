
# Table of Contents

1.  [Root Finding Methods](#org97f8dc1)
    1.  [Newton&rsquo;s method](#org4ec5a5a)
    2.  [Fixed point method](#orgd92eb51)
    3.  [Secant method](#org5e86b54)
2.  [Interpolation techniques](#org7879a30)
    1.  [Hermite Interpolation](#org01982a3)
    2.  [Lagrange Interpolation](#org1020c9c)
    3.  [Newton&rsquo;s Interpolation](#orgd08b2ee)
3.  [Integration methods](#orgf7b000b)
    1.  [Euler Method](#orge64619c)
    2.  [Newton–Cotes Method](#orgb51f88e)
    3.  [Predictor–Corrector Method](#org2f8adfb)
    4.  [Trapizoidal method](#org4dbe660)

\![GitHub](<https://img.shields.io/github/license/jishnurajendran/Numerical-analysis?style=for-the-badge>) \![GitHub forks](<https://img.shields.io/github/forks/jishnurajendran/Numerical-analysis?style=for-the-badge>) \![GitHub Repo stars](<https://img.shields.io/github/stars/jishnurajendran/Numerical-analysis?style=for-the-badge>) \![GitHub watchers](<https://img.shields.io/github/watchers/jishnurajendran/Numerical-analysis?style=for-the-badge>)

:TOC:      :include all


<a id="org97f8dc1"></a>

# Root Finding Methods


<a id="org4ec5a5a"></a>

## [Newton&rsquo;s method](https://en.wikipedia.org/wiki/Newton%27s_method)

Newton&rsquo;s method (also known as the Newton–Raphson method) is a method for finding successively better approximations to the roots (or zeroes) of a real-valued function. The process is repeated as $$ x_{n+1}=x_{n}-{\frac {f(x_{n})}{f'(x_{n})}} $$


<a id="orgd92eb51"></a>

## [Fixed point method](https://en.wikipedia.org/wiki/Fixed-point_iteration)

Fixed-point iteration is a method of computing fixed points of iterated functions. More specifically, given a function f defined on the real numbers with real values and given a point x0 in the domain of f, the fixed point iteration is
$$ x_{n+1}=f(x_{n}),\,n=0,1,2,\dots$$


<a id="org5e86b54"></a>

## [Secant method](https://en.wikipedia.org/wiki/Secant_method)

Secant method is a root-finding algorithm that uses a succession of roots of secant lines to better approximate a root of a function f. The secant method can be thought of as a finite difference approximation of Newton&rsquo;s method.
$$ x_{n}=x_{n-1}-f(x_{n-1}){\frac {x_{n-1}-x_{n-2}}{f(x_{n-1})-f(x_{n-2})}}={\frac {x_{n-2}f(x_{n-1})-x_{n-1}f(x_{n-2})}{f(x_{n-1})-f(x_{n-2})}}. $$


<a id="org7879a30"></a>

# Interpolation techniques


<a id="org01982a3"></a>

## Hermite Interpolation

Hermite Interpolation is a method of interpolating data points as a polynomial function. The generated Hermite interpolating polynomial is closely related to the Newton polynomial, in that both are derived from the calculation of divided differences.


<a id="org1020c9c"></a>

## Lagrange Interpolation

Lagrange polynomials are used for polynomial interpolation. See [Wikipedia](https://en.wikipedia.org/wiki/Lagrange_polynomial)


<a id="orgd08b2ee"></a>

## Newton&rsquo;s Interpolation

Newton&rsquo;s divided differences is an algorithm, historically used for computing tables of logarithms and trigonometric functions. Divided differences is a recursive division process. The method can be used to calculate the coefficients in the interpolation polynomial in the Newton form.


<a id="orgf7b000b"></a>

# Integration methods


<a id="orge64619c"></a>

## Euler Method

Euler method (also called forward Euler method) is a first-order numerical procedure for solving ordinary differential equations (ODEs) with a given initial value. It is the most basic explicit method for numerical integration of ordinary differential equations and is the simplest Runge–Kutta method.
$$ y_{n+1} = y_{n} + h f(t_{n} , y_{n}) $$


<a id="orgb51f88e"></a>

## Newton–Cotes Method

Newton–Cotes formulae, also called the Newton–Cotes quadrature rules or simply Newton–Cotes rules, are a group of formulae for numerical integration (also called quadrature) based on evaluating the integrand at equally spaced points. They are named after Isaac Newton and Roger Cotes.


<a id="org2f8adfb"></a>

## Predictor–Corrector Method

Predictor–Corrector methods belong to a class of algorithms designed to integrate ordinary differential equations – to find an unknown function that satisfies a given differential equation. All such algorithms proceed in two steps:

1.  The initial, *&ldquo;prediction&rdquo;* step, starts from a function fitted to the function-values and derivative-values at a preceding set of points to extrapolate (&ldquo;anticipate&rdquo;) this function&rsquo;s value at a subsequent, new point.
2.  The next, *&ldquo;corrector&rdquo;* step refines the initial approximation by using the predicted value of the function and another method to interpolate that unknown function&rsquo;s value at the same subsequent point.


<a id="org4dbe660"></a>

## Trapizoidal method

Trapezoidal rule is a technique for approximating the definite integral. The trapezoidal rule works by approximating the region under the graph of the function f(x) as a trapezoid and calculating its area.
$$ \int _{a}^{b}f(x)\,dx\approx \sum _{k=1}^{N}{\frac {f(x_{k-1})+f(x_{k})}{2}}\Delta x_{k}$$

