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

#set text(font: "New Computer Modern")
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
f(x + Delta x) - f(x) &= f'(x_0) dot Delta x + epsilon dot Delta x$,

#set align(left)

where $epsilon$ represents the small difference in _slope_ between the secant and tangent lines. It can also be thought of as the error inherent in the limit from the slope of the tangent line.

As $Delta x arrow 0$, the slope of the secant line approaches that of the tangent line, so $epsilon arrow 0$ as well. From an infinitesimal perspective, both values are infinitesimal or approximately zero, and the overarching idea applies broadly to any $x$ where $f(x)$ is continuous, so (1) can be rewritten more generally as

#set align(center)

$#h(82pt) f(x + delta x) - f(x) &= f'(x) dot delta x + epsilon dot delta x$, #h(82pt) (3)

#set align(left)

where $epsilon$ and $delta x$ are both infinitesimal. (4) tells us that a nonlinear change -- the left side -- is equal to the sum of i) a linear change, $f'(x) dot delta x$, and ii) the product of the error and the change in $x$, and this product is significantly smaller than $delta x$ which is already infinitesimal. The result has been shown.

A brief review of Riemann sums is warranted as well. A *Riemann sum* is an approximation of the area under a curve via a division into small rectangles. Consider a function $f(x)$ continuous on the interval $[a,b]$. The rectangles are obtained by first partitioning the interval $[a,b]$ into $n$ subintervals, so each partition point $x_k$ is given by

#set align(center)

$display(x_k = a + (k(b-a))/n)$, 

#set align(left)

where $0 <= k <= n$, $k$ is a positive integer, and $display((b-a)/n)$ represents the length of each subinterval. The subintervals act as bases for the rectangles, and the rectangles' heights depend on $f(x)$. For the upcoming proof, we will be focused on the *left Riemann sum*, where the height of each rectangle is determined by the left endpoints of the subintervals. With this concept, the area is approximated by:

#set align(center)

$display(sum_(k=1)^n f[((k-1)(b-a))/n] dot Delta x)$,

#set align(left)

where $display(f[((k-1)(b-a))/n])$ is the height of the $k$th rectangle and $Delta x$ is the increment. A more thorough explanation of this summation is not necessary, as the proof that follows relies on a variation of it that will indeed be closely looked at.

\

#set align(left)

We are now ready to prove the fundamental theorem of calculus.

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

#set align(center)

#figure(
  image("images/riemann sum.png", width:60%),
  caption: [Riemann sum visualized]
)

#set align(left)

The integral is approximated by the left Riemann sum of $f(x)$ from $a$ to $b$ where the increment is an infinitesimal $delta x$:

#set align(center)

#h(65pt) $display(integral_a^b f(x)d x approx sum_(x=a \ #text[step] delta x)^(b-delta x) f(x) dot delta x)$, where $delta x approx 0$. #h(65pt) (3)

#set align(left)

The notation of the summation in (3) may perplex readers who are familiar with 

#set align(center)

$display(sum_(k=1)^n) a_k$

#set align(left)

where $k$ is the *index* and $a_k$ is the $k$th term in the sum. The same thing is happening in (3), but instead of the index incrementing by 1, it instead increments by $delta x$ -- hence the "step $delta x$".

(3) can be conceptualized with the visual shown in Figure 10 but instead on a far smaller scale with the area divided up into an infinitely large number of rectangles. Notice how the sum only increments from $a$ to $b - delta x$, as $f(b - delta x)$ corresponds to the height of the final rectangle toward the right of Figure 10.

Proceeding with the proof, since $F'(x) = f(x)$, (2) tells us that

#set align(center)

$F(x + delta x) - F(x) = f(x) dot delta x + epsilon dot delta x$.

#set align(left)

We can now sum both sides

#set align(center)

#h(37pt)$display(sum_(x=a \ #text[step ] delta x)^(b-delta x)[F(x + delta x) - F(x)] = sum_(x=a \ #text[step ] delta x)^(b-delta x)f(x) dot delta x + sum_(x=a \ #text[step ] delta x)^(b-delta x) epsilon dot delta x)$, #h(37pt) (4)

#set align(left)

and this produces a telescoping sum on the left. This is because

#set align(center)

$display(sum_(x=a \ #text[step ] delta x)^(b-delta x)[F(x + delta x) - F(x)])$

#v(4pt)

$= [F(a + delta x) - F(a)] - [F(a+2 delta x) - F(a + delta x)] - [F(a + 3 delta x) - F(a + 2 delta x)]  - dots.h.c - [F(b - delta x + delta x) - F(b - delta x)] \
= F(b') - F(a),$

#set align(left)

where $b'$ is a number that is close to $b$ but not exactly equal. The reason for this is that the $delta x$'s in the quantity $F(b-delta x + delta x)$ are not necessarily the same. The rationale is subtle, but it essentially boils down to the fact that adding a long sequence of infinitesimals to $a$ will not land us exactly on $b$ but on a value very close to it. In particular, the value $b - delta x$ _conceptualizes_ the idea of a number infinitely close to $b$ but does not represent a definite value where $delta x$ cancels out to zero. It's best to think of the quantity $F(b-delta x + delta x)$ as one that lies infinitely close to $F(b)$.

From here, we can now say that

#set align(center)

$display(integral_a^b f(x)d x approx sum_(x=a  \ #text[step] delta x)^(b-delta x)f(x)d x = F(b')-F(a)-sum_(x=a \ #text[step] delta x)^(b-delta x) epsilon dot delta x)$

#set align(left)

which is obtained by replacing the summation on the left of (4) with $F(b') - F(a)$ and subtracting 
#v(0pt)$display(sum_(x=a \ #text[step] delta x)^(b-delta x) epsilon dot delta x)$ from both sides. Subtracting again gives

#set align(center)

$display(sum_(x=a  \ #text[step] delta x)^(b-delta x)f(x)d x - [F(b') - F(a)] = -sum_(x=a \ #text[step ] delta x)^(b-delta x) epsilon dot delta x)$,

#set align(left)

and taking the absolute value of both sides results in the inequalities

#set align(center)

$display(abs(sum_(x=a  \ #text[step] delta x)^(b-delta x)f(x)d x - [F(b') - F(a)]) <= abs(sum_(x=a \ #text[step ] delta x)^(b-delta x) epsilon dot delta x) <= sum_(x=a \ #text[step ] delta x)^(b-delta x) abs(epsilon) dot delta x)$.

#set align(left)

The first inequality is just a way of saying that if two quantities are equal, then it is technically true that the absolute value of the first quantity cannot be larger than that of the second. It is an important inequality in the proof, as it represents the distance between the approximated integral and the difference of the antiderivative evaluated at (almost) $b$ and $a$, so we want to show that it goes infinitely close to 0. Now why does the second inequality hold? Recall that the triangle inequality states that $abs(a+b) <= abs(a) + abs(b)$ for any numbers $a$ and $b$. In this case, the second inequality is merely an extended triangle inequality. The reader is encouraged to consider the analogy utilized back when the triangle inequality was first introduced and extend the logic to this case and convince themselves of this fact.

If $max(abs(epsilon))$ is the largest term in the summation $display(sum_(x=a \ #text[step ] delta x)^(b-delta x) abs(epsilon) dot delta x)$, then

#set align(center)

#v(2pt)

$display(sum_(x=a \ #text[step ] delta x)^(b-delta x) abs(epsilon) dot delta x <= max(abs(epsilon)) dot sum_(x=a \ #text[step ] delta x)^(b-delta x) delta x = max(abs(epsilon)) dot (b' - a) approx 0).$

#set align(left)

The first inequality can be understood by thinking of the sum

#set align(center)

$1 dot 2 + 2 dot 2 + 3 dot 2 + dots.h.c + 10 dot 2$,

#set align(left)

where each term is given by $a dot 2$ and $a$ is a whole number from 1 through 10. If we now take the maximum value of $a$, 10, and replace every $a$ in the sum with 10, then the sum clearly grows larger.

The equality following the inequality replaces $display(sum_(x=a \ #text[step ] delta x)^(b-delta x) delta x)$ with $(b' - a)$. Remember that these calculations #v(0pt) all stem from applying (2) to the fact that $d/(d x) F(x) = f(x)$, so $epsilon approx 0$, which means 

#set align(center)

$display(max(abs(epsilon)) dot (b' - a) approx 0),$

#set align(left)

so

#set align(center)

$display(integral_a^b f(x)d x approx sum_(x=a \ #text[step ] delta x)^(b-delta x) f(x) delta x approx F(b') - F(a))$.

#set align(left)

Lastly, since $F(x)$ is continuous, $F(b') approx F(b)$ (remember that $b'$ is off from $b$ by merely an infinitesimal amount), so we reach the conclusion that

#set align(center)

$display(integral_a^b f(x)d x = F(b) - F(a)).$

#set align(left)

A few minutiae are left out for the sake of brevity, and the proof as a whole is far from airtight, but it succeeds in giving us a solid insight as to how the FTC can be argued from the angle of nonstandard analysis.

#pagebreak()

#text(14pt)[
  Reflection
]

The advent of nonstandard analysis lead to proofs of various results that were not unable to be practically proven with real analysis (proving them with real analysis is not impossible, though it would have been exceedingly difficult). What this entails back then was that the ease of notation helped mathematicians see things that were more hidden from a real analysis perspective. It has been shown, however, that a result proven using one system can readily be proven with the other, and as of today the applications of nonstandard analysis seem to steer toward an area of mathematics that is not particularly connected with other areas; nonstandard analysis as a whole has managed to produce its own set of unique questions and problems. In general, real analysis (and more broadly standard analysis) and nonstandard analysis by no means replace each other, but rather serve as two distinct approaches toward anaysis, and a preference toward either approach ultimately comes down to what one is first exposed to on their mathematical endeavors.

#pagebreak()