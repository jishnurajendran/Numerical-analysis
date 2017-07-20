# Numerical-analysis
## Root Finding Methods
### Newton's method
> Newton's method (also known as the Newton–Raphson method) is a method for finding successively better approximations to the roots (or zeroes) of a real-valued function. The process is repeated as
![Newton's method](https://wikimedia.org/api/rest_v1/media/math/render/svg/710c11b9ec4568d1cfff49b7c7d41e0a7829a736)
### Fixed point method
> Fixed-point iteration is a method of computing fixed points of iterated functions. More specifically, given a function f defined on the real numbers with real values and given a point x0 in the domain of f, the fixed point iteration is ![fixed point iteration](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba487937fda713369ec948df23c7bda3a89a95aa)
### Secant method
>Secant method is a root-finding algorithm that uses a succession of roots of secant lines to better approximate a root of a function f. The secant method can be thought of as a finite difference approximation of Newton's method.
![Secant method](https://wikimedia.org/api/rest_v1/media/math/render/svg/811da2184f287e81576642741ab1f8f2d12c828f)
## Interpolation techniques
### Hermite Interpolation
> Hermite Interpolation is a method of interpolating data points as a polynomial function. The generated Hermite interpolating polynomial is closely related to the Newton polynomial, in that both are derived from the calculation of divided differences.
### Lagrange Interpolation
> Lagrange polynomials are used for polynomial interpolation. See [Wikipedia]{https://en.wikipedia.org/wiki/Lagrange_polynomial}
### Newton's Interpolation
> Newton's divided differences is an algorithm, historically used for computing tables of logarithms and trigonometric functions. Divided differences is a recursive division process. The method can be used to calculate the coefficients in the interpolation polynomial in the Newton form.

## Integration methods
### Euler Method 
> Euler method (also called forward Euler method) is a first-order numerical procedure for solving ordinary differential equations (ODEs) with a given initial value. It is the most basic explicit method for numerical integration of ordinary differential equations and is the simplest Runge–Kutta method.
![Euler Iteration](https://wikimedia.org/api/rest_v1/media/math/render/svg/0df686bb7caa953daf6e0495aa9e1703e1be0ec4)

### Newton–Cotes Method
> Newton–Cotes formulae, also called the Newton–Cotes quadrature rules or simply Newton–Cotes rules, are a group of formulae for numerical integration (also called quadrature) based on evaluating the integrand at equally spaced points. They are named after Isaac Newton and Roger Cotes.
### Predictor–Corrector Method
> Predictor–Corrector methods belong to a class of algorithms designed to integrate ordinary differential equations – to find an unknown function that satisfies a given differential equation. All such algorithms proceed in two steps:
> 1. The initial, "prediction" step, starts from a function fitted to the function-values and derivative-values at a preceding set of points to extrapolate ("anticipate") this function's value at a subsequent, new point.
> 2. The next, "corrector" step refines the initial approximation by using the predicted value of the function and another method to interpolate that unknown function's value at the same subsequent point.
### Trapizoidal method
> Trapezoidal rule is a technique for approximating the definite integral. The trapezoidal rule works by approximating the region under the graph of the function f(x) as a trapezoid and calculating its area.
![Trapezoidal rule](https://wikimedia.org/api/rest_v1/media/math/render/svg/9c5878f100043b300c63f335adf82c99c78948f2)
