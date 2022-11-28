# Table of Contents
![GitHub](https://img.shields.io/github/license/jishnurajendran/Numerical-analysis?style=for-the-badge) ![GitHub forks](https://img.shields.io/github/forks/jishnurajendran/Numerical-analysis?style=for-the-badge) ![GitHub Repo stars](https://img.shields.io/github/stars/jishnurajendran/Numerical-analysis?style=for-the-badge) ![GitHub watchers](https://img.shields.io/github/watchers/jishnurajendran/Numerical-analysis?style=for-the-badge)

1.  [Root Finding Methods](#org770afdb)
    1.  [Newton&rsquo;s method](#org013f1b7)
    2.  [Fixed point method](#orgde6567b)
    3.  [Secant method](#org4ebbe87)
2.  [Interpolation techniques](#org9e2a72e)
    1.  [Hermite Interpolation](#orgd63ca7f)
    2.  [Lagrange Interpolation](#org1e8da43)
    3.  [Newton&rsquo;s Interpolation](#orgd4f58aa)
3.  [Integration methods](#org8e7e5c8)
    1.  [Euler Method](#org351da1a)
    2.  [Newton–Cotes Method](#org75020aa)
    3.  [Predictor–Corrector Method](#orgcf8f14e)
    4.  [Trapizoidal method](#orgf561a2c)



<a id="org770afdb"></a>

# Root Finding Methods


<a id="org013f1b7"></a>

## [Newton&rsquo;s method](https://en.wikipedia.org/wiki/Newton%27s_method)

Newton&rsquo;s method (also known as the Newton–Raphson method) is a method for finding successively better approximations to the roots (or zeroes) of a real-valued function. The process is repeated as $$ x_{n+1}=x_{n}-{\frac {f(x_{n})}{f'(x_{n})}} $$


<a id="orgde6567b"></a>

## [Fixed point method](https://en.wikipedia.org/wiki/Fixed-point_iteration)

Fixed-point iteration is a method of computing fixed points of iterated functions. More specifically, given a function f defined on the real numbers with real values and given a point x0 in the domain of f, the fixed point iteration is
$$ x_{n+1}=f(x_{n}),\,n=0,1,2,\dots$$


<a id="org4ebbe87"></a>

## [Secant method](https://en.wikipedia.org/wiki/Secant_method)

Secant method is a root-finding algorithm that uses a succession of roots of secant lines to better approximate a root of a function f. The secant method can be thought of as a finite difference approximation of Newton&rsquo;s method.
$$ x_{n}=x_{n-1}-f(x_{n-1}){\frac {x_{n-1}-x_{n-2}}{f(x_{n-1})-f(x_{n-2})}}={\frac {x_{n-2}f(x_{n-1})-x_{n-1}f(x_{n-2})}{f(x_{n-1})-f(x_{n-2})}}. $$


<a id="org9e2a72e"></a>

# Interpolation techniques


<a id="orgd63ca7f"></a>

## Hermite Interpolation

Hermite Interpolation is a method of interpolating data points as a polynomial function. The generated Hermite interpolating polynomial is closely related to the Newton polynomial, in that both are derived from the calculation of divided differences.


<a id="org1e8da43"></a>

## Lagrange Interpolation

Lagrange polynomials are used for polynomial interpolation. See [Wikipedia](https://en.wikipedia.org/wiki/Lagrange_polynomial)


<a id="orgd4f58aa"></a>

## Newton&rsquo;s Interpolation

Newton&rsquo;s divided differences is an algorithm, historically used for computing tables of logarithms and trigonometric functions. Divided differences is a recursive division process. The method can be used to calculate the coefficients in the interpolation polynomial in the Newton form.


<a id="org8e7e5c8"></a>

# Integration methods


<a id="org351da1a"></a>

## Euler Method

Euler method (also called forward Euler method) is a first-order numerical procedure for solving ordinary differential equations (ODEs) with a given initial value. It is the most basic explicit method for numerical integration of ordinary differential equations and is the simplest Runge–Kutta method.
$$ y_{n+1} = y_{n} + h f(t_{n} , y_{n}) $$


<a id="org75020aa"></a>

## Newton–Cotes Method

Newton–Cotes formulae, also called the Newton–Cotes quadrature rules or simply Newton–Cotes rules, are a group of formulae for numerical integration (also called quadrature) based on evaluating the integrand at equally spaced points. They are named after Isaac Newton and Roger Cotes.


<a id="orgcf8f14e"></a>

## Predictor–Corrector Method

Predictor–Corrector methods belong to a class of algorithms designed to integrate ordinary differential equations – to find an unknown function that satisfies a given differential equation. All such algorithms proceed in two steps:

1.  The initial, &ldquo;prediction&rdquo; step, starts from a function fitted to the function-values and derivative-values at a preceding set of points to extrapolate (&ldquo;anticipate&rdquo;) this function&rsquo;s value at a subsequent, new point.
2.  The next, &ldquo;corrector&rdquo; step refines the initial approximation by using the predicted value of the function and another method to interpolate that unknown function&rsquo;s value at the same subsequent point.


<a id="orgf561a2c"></a>

## Trapizoidal method

Trapezoidal rule is a technique for approximating the definite integral. The trapezoidal rule works by approximating the region under the graph of the function f(x) as a trapezoid and calculating its area.
$$ \int _{a}^{b}f(x)\,dx\approx \sum _{k=1}^{N}{\frac {f(x_{k-1})+f(x_{k})}{2}}\Delta x_{k}$$

