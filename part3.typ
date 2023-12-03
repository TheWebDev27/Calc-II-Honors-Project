#set text(
    font: "New Computer Modern",
    size: 10pt
)

#set par(
  leading: .75em
)

We now employ nonstandard analysis to prove the incredible fundamental theorem of calculus, which relates a function's area under its curve to its antiderivative. Before we can do this, however, we must first establish the following result:

#set text(font: "Source Serif")
#set align(center)

#grid(
  columns: 80%,
  rows: auto,
  [
    #set align(left)

    Consider a small change in input $delta x$ for some function $f(x)$ that is continuous some interval. The corresponding small change in the output can be expressed like so:

    #set align(center)

    $f(x + delta x) - f(x) = f'(x) dot delta x + epsilon dot delta x$,

    #set align(left)
    
    where $f'(x)$ is the derivative of $f(x)$ and $epsilon approx 0$.
  ]
)

#set text(font: "New Computer Modern Math")
#set text(9pt)

#figure(
  image("images/tangent line visual.png", width: 85%),
  caption: [Tangent line visualization]
)

#set text(10pt)
#set align(left)

A few small things to note:

#set align(center)

#grid(
  columns: 90%,
  rows: auto,
  [
    #set align(left)

    1) $Delta$ is typically used represent a small difference between two quantities, while $delta$ is typically used to represent an infinitesimal value. The difference is merely semantical, as both represent the same core idea.

    2) In Figure 9, $f'(x_0)$ does _not_ represent the actual equation of the tangent line but merely serves as a label showing that the tangent line has a slope of $f'(x_0)$.

    3) In Figure 9, $epsilon$ is not intended to represent the vertical distance between the tangent line and $f(x_0)$. It's meaning will be clarified shortly.
  ]
)

#set align(left)

The result can quickly be shown by starting with the limit definition of the derivative at $(x_0, f(x_0))$,

#set align(center)

$display(f'(x_0) = lim _(Delta x arrow 0) (f(x_0 + Delta x) - f(x_0))/(Delta x))$.

#set align(left)

As a reminder, this says that the slope of the tangent line at $(x_0, f(x_0))$ is given by the limit of the slope of the *secant line* between $(x_0, f(x_0))$ and $(x_0 + Delta x, f(x_0 + Delta x))$ as $Delta x arrow 0$, where a secant line is simply a line that intersects a curve at least twice.

We can see in Figure 9 how the slope of the tangent line slightly differs from the slope of the secant line. Although the secant line is omitted from the figure, this is certain to be the case, because if they were equal, then the gap marked by $epsilon$ would not exist 
#footnote[It is possible for this gap to not be present, but $f(x)$ would have to be linear. This would result in $epsilon$ being 0.]. Therefore, we can say that

#set align(center)

$display((f(x_0 + Delta x) - f(x_0))/(Delta x) &= f'(x_0) + epsilon) \
#h(75pt) f(x + Delta x) - f(x) &= f'(x_0) dot Delta x + epsilon dot Delta x$, #h(75pt) (1)

#set align(left)

where $epsilon$ represents the small difference in _slope_ between the secant and tangent lines. It can also be thought of as the error inherent in the limit from the slope of the tangent line.

As $Delta x arrow 0$, the slope of the secant line approaches that of the tangent line, so $epsilon arrow 0$ as well. From an infinitesimal perspective, both values are infinitesimal or approximately zero, and the overarching idea applies broadly to any $x$ where $f(x)$ is continuous, so (1) can be rewritten more generally as

#set align(center)

$#h(82pt) f(x + delta x) - f(x) &= f'(x) dot delta x + epsilon dot delta x$, #h(82pt) (2)

#set align(left)

where $epsilon$ and $delta x$ are both infinitesimal. (2) tells us that a nonlinear change -- the left side -- is equal to the sum of i) a linear change, $f'(x) dot delta x$, and ii) the product of the error and the change in $x$, and this product is even smaller than $delta x$. \ \

We are now ready to prove the first fundamental theorem of calculus.

#set text(font: "Source Serif")
#set align(center)

#grid(
  columns: 80%,
  rows: auto,
  [
    #set align(left)

    *Theorem 5 - The Fundamental Theorem of Calculus*

    For a function $f(x)$ that is continuous over some closed interval [a,b], if another function $F(x)$ exists where 

    #set align(center)

    $d F(x) = F'(x)d x = f(x)d x$

    #set align(left)

    for all $x$ in [a,b], then

    #set align(center)

    $display(integral _a^b f(x)d x = F(b) - F(a))$.
  ]
)

#set text(font: "New Computer Modern")
#set align(left)

If $F(x)$ is an *antiderivative* of $f(x)$, or $d/(d x)F(x) = f(x)$, over the interval $[a, b]$, then the integral of $f(x)$ on said interval is simply the difference between $F(x)$ evaluated at $x=b$ and $x=a$.

As a reminder, a *Riemann sum* is an approximation of the area under a curve via a division into small rectangles. These rectangles are obtained by first partitioning the interval $[a,b]$ into $n$ subintervals where each partition point $x_k$ is given by

#set align(center)

$display(x_k = a + (k(b-a))/n)$, 

#set align(left)

where $0 <= k <= n$ and $k$ is a positive integer.Each subinterval acts as a base for a rectangle, and the rectangles' heights depend on $f(x)$. For example, if the interval ($$)Riemann sums are essentially summations ($sum$), so $n$ acts as an *increment*. For the proof, we will be focused on a variation of this concept known as the *left Riemann sum*, where the height of each rectangle is determined by the left endpoints of the subintervals.

#set align(center)

#figure(
  image("images/riemann sum.png", width:60%),
  caption: [Riemann sum visualized]
)

#set align(left)
#pagebreak()

The integral is approximated by the left Riemann sum of $f(x)$ from $a$ to $b$ where the increment is an infinitesimal $delta x$:

#set align(center)

$display(integral_a^b f(x)d x approx sum_(x=a \ #text[step] delta x)^(b-delta x) f(x) dot delta x)$, where $delta x approx 0$.

#set align(left)

In this case, one can imagine the visual shown in Figure 10 but instead with the area divided up into an infinitely large number of rectangles. Notice how the summation only increments from $a$ to $b - delta x$, as $f(b - delta x)$ corresponds to the height of the final rectangle toward the right of Figure 10.