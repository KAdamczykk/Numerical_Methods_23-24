function [] = Plot(a,n,x,max_iter, approx)
% The function creates a plot of the polynomial with marked zeros by 
% calling the functions ZwrocWielomian and Newton, so it takes the 
% necessary arguments to use these functions.
    root = unique(Newton(n,a,max_iter,x,approx));
    poly = ReturnPolynomial(x,n,a);
    root = root(root > -1 & root  < 1);
    figure;
    plot(x, poly, 'b--', 'LineWidth', 2, 'DisplayName', 'W_n(x)');
    hold on
    scatter(root,zeros (size(root)),50, 'r', 'filled', 'DisplayName', 'Roots from Newton method')
    legend();
    title('Plot of w_n(x) for the interval [-1, 1] using test data and the zero locations.');
    xlabel('x');
    ylabel('y');
    grid on;
end