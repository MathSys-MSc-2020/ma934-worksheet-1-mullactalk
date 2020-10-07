module Starter
# List of dependencies
using Plots

# List of functions to be exported
export example_plot

# Definitions of any new types provided

# Function definitions
"""
    example_plot(n)

This function evaluates Sin(x) at n points in the interval [0, 2π], creates a
    plot and then returns the plot.
"""
function myplot(alpha,n)
    title = "This is my new plot."
    x1 = zeros(n+1)
    for i < n+1
        x1[i]=2^(i-1)
    end
    y1 = ((x1)^(alpha))(log(x1))

    # Plot the points
    p = plot(x1, y1, seriestype=:scatter,label="Some sample points",
    title=title, xlabel="x", ylabel="f(x)=x^\alpha*log(x)", yaxis:=log ,markersize=10, markercolor="red")

    # Now plot the true function
    x2 = collect(range(0.0, 2^(n), length=1000))
    y2 = ((x2)^(alpha))(log(x2))
    plot!(x2, y2, label="Underlying function.", color="green", linewidth=2)
    return p
end
# End the module definition
end
