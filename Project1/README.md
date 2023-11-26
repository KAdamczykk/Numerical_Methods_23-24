## Project 1
### Determining the zeros of a polynomial using Newton's method
### About project
On first project, my task, was to create methods, that can find the roots of following polynomial,
using Newton's method. The polynomial is given by:
\[ w_n(x) = a_0 \cdot (T_0(x) - U_0(x)) + \ldots + a_n \cdot (T_n(x) - U_n(x)) \],
where \[T_n(x)\] - Chebyshev polynomial of first kind, \[U_n(x)\] - Chebyshev polynomial odfsecond type
### Project structure:
1. [Plots](Plots) - all generated plots and images by me
2. [code](code) - all matlab scripts:
* [Chebyshev1stkind](Chebyshev1stkind.m) - generating value of polynomials and derivatives of Chebyshev polynomials of 1st kind
* [Chebyshev2stkind](Chebyshev2stkind.m) - generating value of polynomials and derivatives of Chebyshev polynomials of 2nd kind
* [GUI_plots_roots](GUI_plots_roots.mlapp) - GUI application, that we can choose parameters on one tab, and after pushing start,
  it is plot on second tab
* [Newton](Newton.m) - main method, that calculate the roots of polynomial
* [Plot](Plot.m) - generating plots, which we can see also in GUI
* [ReturnDerivative](ReturnDerivative.m) - returning value of derivative for main polynomial
* [ReturnPolynomial](ReturnPolynomial.m) - returning value of main polynomial
* [built_in](built_in.m) - roots from built-in functions
* [script](skript.m) - main script with tests of numerical errors
