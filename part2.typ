#set text(
    font: "New Computer Modern",
    size: 10pt
)

#set par(
  leading: .75em
)

#set align(center)

= The Nonstandard Approach

#set align(left)

One drawback with the real analysis approach involving the epsilon-delta definition of the limit is its cumbersome notation. Proofs can quickly become cluttered with absolute values and inequalities that at times can be challenging to keep track of and connect to one another. By formalizing the idea of the infinitesimal to where basic algebraic techniques can be applied to it, a new system of analysis can be developed to study the same material that real analysis does while taking advantage of simpler and more concise notation.
\ 

#text(14pt)[
  Introduction
]

This introduction follows section 1.4 of

#set align(center)

Keisler, H. (1976). _Foundations of Infinitesimal Calculus_, Prindle Weber & Schmidt.

#set align(left)

Let us first consider two points on the parabola $f(x) = x^2$. One will be a fixed point at $(x_0, y_0)$, while the other will lie some distance away at $(x_0 + Delta x, y_0 + Delta y)$ where $Delta x$ and $Delta y$ represent the horizontal and vertical distances between the two points.

#set text(9pt)

#figure(
  image("images/parabola slope.png", width: 60%),
  caption: [$(x_0, y_0)$ and $(x_0 + Delta x, y_0 + Delta y)$ on $f(x)=x^2$]
)

#set text(10pt)

The average slope between any two points $(x_1, y_1)$ and $(x_2, y_2)$ is the ratio of the change in $y$ to the change in $x$:

#set align(center)

$display((Delta y) / (Delta x)=(y_2-y_1)/(x_2-x_1)).$

#set align(left)

Therefore, the average slope between the two points on the parabola above is \

#set align(center)

#h(125pt) $display(((y_0 + Delta y) - y_0)/((x_0 + Delta x) - x_0)).$ #h(110pt) (1)

#set align(left)

The function is $f(x)=x^2$, so any $y$ value is determined by plugging in its corresponding input $x$ into it. The points then become $(x_0, x_0^2)$ and $(x_0 + Delta x, (x_0 + Delta x)^2)$. Substituting in these new $y$ coordinates into $(1)$ gives

#set align(center)

$display((Delta y)/(Delta x)) &= display(((x_0 + Delta x)^2 - x_0^2)/((x_0 + Delta x) - x_0))
\
&= display(([x_0^2+2x_0 Delta x + (Delta x)^2] - x^2_0)/((x_0+Delta x) - x_0))
\
&= display((2x_0 Delta x + (Delta x)^2)/(Delta x))
\
#h(105pt) &= 2x _0 + Delta x. #h(145pt) (2)
$

#set align(left)

(2) gives us the slope in terms of a fixed point's $x$-coordinate and its horizontal distance $Delta x$ from some variable point. If we want to find the slope of a line that lies *tangent* to the curve -- meaning that it intersects the curve at exactly one point -- at $(x_0, x_0^2)$, then we can treat $Delta x$ as a very small number so that the tangent line's slope is very close to (2). We #emph[cannot] set $Delta x$ equal to zero, because (2) follows from a quotient where $Delta x$ is present in the denominator of a quotient. Anyhow, treating it as a miniscule value leads to the intuitive result that the slope of some line tangent to the point $(x_0, x_0^2)$ on the parabola is essentially

#set align(center)

$2x_0.$

#set align(left)

This loose usage of an infinitesimal -- treating a value as infinitely small to where it can be ignored -- has in fact produced decently accurate results throughout the development of calculus over the past several centuries, being used by those such as Newton, Leibniz, Euler, and others in varying forms. However, it is by no means rigorous and does not establish results with absolute certainty. Why? This is because we are left with a problem: How do we know exactly when numbers are small enough to be treated as negligible in a calculation? 

This now brings us to our first formal definition: 

#set text(font: "Source Serif")
#set align(center)

#grid(
  columns: 80%,
  rows: auto,
  [
    #set align(left)

    An *infinitesimal* is a number $epsilon$ where

    #set align(center)

    $-a<epsilon<a$

    #set align(left)

    for any positive real number $a$.
  ]
)

#set text(font: "New Computer Modern")
#set align(left)

Amongst the real numbers, 0 would be the only value that qualifies as infinitesimal. What we now do is expand the real number system by introducing *hyperreal numbers*. These include the real numbers along with nonzero infinitesimals, which can be thought of as numbers that lie infinitely close to 0. The set of all real numbers is represented by $RR$, while the set of all hyperreal numbers is represented by $RR^*$. Various symbols including $Delta x, Delta y, epsilon, #text[and] delta$ are used to symbolize infinitesimals. For instance, $x + Delta x$ is interpretted as some quantity that lies #emph[infinitely] close to $x$, and $display(1/epsilon)$ represents an *infinite positive number*. Hyperreal numbers that are not infinitely positive or negative are *finite numbers*.

#set text(9pt)

#figure(
  image("images/hyperreal line.png", width: 70%),
  caption: [Hyperreal number line visualized]
)

#set text(10pt)

We can conceptualize the scale of hyperreal numbers by imagining ourselves "zooming in" infinitely close onto on a real number such as 0 or 100 on the hyperreal number line (Figure 5). This helps to clarify the nature of hyperreal numbers as merely an extension of the real numbers, so much so to where its properties and the arithmetic involved with them match exactly with that of the reals. This approach to analysis is known as *nonstandard analysis*.

Going back to the calculation of the instantaneous slope of $f(x)=x^2$, we now treat the value of $Delta x$ as a nonzero infinitesimal under this new lense of analysis. This means that the expression

#set align(center)

$2x_0 + Delta x$

#set align(left)

lies infinitely close to $2x_0$, so the slope of any line tangent to $(x_0, x_0^2)$ is concluded to be $2x_0$. \ \

Let's use infinitesimals to try computing the instantaneous slope of the function

#set align(center)

$f(x)=sqrt(x)$.

#set text(9pt)

#figure(
  image("images/square root function.png", width: 70%),
  caption: [$f(x)=sqrt(x)$]
)

#set text(10pt)
#set align(left)

The average slope between a fixed point and a variable point on the square root function is \ \

#set align(center)

$display((Delta y)/(Delta x) &= (f(x_0+Delta x)-f(x_0))/(Delta x) \
&= (sqrt(x_0 + Delta x) - sqrt(x_0))/(Delta x) 
)$

#set align(left)

In order to calculate the instaneous slope, we need a way to cancel out $Delta x$ from the denominator. This can be readily accomplished by multiplying the quotient by the conjugate of the numerator in the form of 1 to induce a difference of squares:

#set align(center)

$display(
  (sqrt(x_0 + Delta x) - sqrt(x_0))/(Delta x) dot ((sqrt(x_0+Delta x) + sqrt(x_0))/(sqrt(x_0 + Delta x) + sqrt(x_0))) = ((sqrt(x_0 + Delta x))^2 - (sqrt(x_0))^2)/(Delta x(sqrt(x_0 + Delta x) + sqrt(x_0))) \  
)$

$display(
  &= ((x_0 + Delta x) - x_0)/(Delta x(sqrt(x_0 + Delta x) + sqrt(x_0))) \
  &= (Delta x)/(Delta x(sqrt(x_0 + Delta x) + sqrt(x_0))) \
  &= 1/(sqrt(x_0 + Delta x) + sqrt(x_0))
)$

#set align(left)

Since the $Delta x$ in the denominator is infinitesimal, this means that the quantity $sqrt(x_0 + Delta x)$ is infinitely close to $sqrt(x_0)$, so

#set align(center)

$display(
  1/(sqrt(x_0 + Delta x) + sqrt(x_0))&=1/(sqrt(x_0) + sqrt(x_0))\
   &= 1/(2sqrt(x_0)).
)$

#set align(left)

Those who have experience with calculating the derivatives of functions using the limit definition of the derivative will be quick to notice that these calculations play out mostly the same way with the exception of the absence of the limit. 

At this stage, the skeptical reader may question how exactly this system has solved the concern regarding rigor. In particular, how do the ideas presented so far formalize the concept of deeming a quantity in a given calculation as neglible? What has happened so far is that we have #emph[defined] what it means for a number to be considered negligibly small, so if a given quantity does not meet the criteria specified, then we know that it cannot be ignored. Beyond that, however, we have done nothing more than explore some basic ideas of nonstandard analysis, and rigorous justifications require a working knowledge of abstract algebra. The details are obviously left out, as they lie far beyond my expertise. While the curious reader may feel left unfulfilled by this, keep in mind that the formalization of many concepts require complicated machinery, so it is commonplace for students of mathematics to take a result at face value initially and uncover its logical justification far later. As a direct analogue to the current situation, consider the analysis behind limits covered in the first half of this paper. It is likely that most undergraduates who have studied limits will never encounter this rigorous treatment of them in their lifetime -- let alone give it any consideration. Ambitious students, however, will inevitably run across it in a real analysis course, and the formalities are unveiled then. We now lie in the very same boat with infinitesimals!

#pagebreak()

#text(14pt)[
  Basic Applications of Infinitesimals
]

This section follows

#set align(center)


Stroyan, Keith. (2012). _A Brief Introduction to Infinitesimal Calculus_, can be found at \ https://homepage.math.uiowa.edu/~stroyan/InfsmlCalculus/Lecture1/Lect1.pdf.

#set align(left)

It is due time for us to see how infinitesimal logic can be used to provide basic intuitive argumentation for a couple of ideas seen in calculus.

#set text(font: "Source Serif")
#set align(center)

#grid(
    columns: 80%,
    rows: auto,
    [
      #set align(left)

      *Theorem 4 - The Extreme Value Theorem* \
      Consider a function $f(x)$ that is continuous on a closed interval $[a, b]$. There then exist two numbers $x_(min)$ and $x_(max)$ at which $f(x)$ achieves its minimum and maximum values respectively where

      #set align(center)

      $f(x_(min)) <= f(x) <= f(x_(max))$

      #set align(left)

      for all other $x$'s.
    ]
)

#set text(font: "New Computer Modern")
#set align(left)

#set text(9pt)

#figure(
  image("images/extreme value theorem.png", width: 50%),
  caption: [Extreme value theorem visualized]
)

#set text(10pt)

The extreme value theorem asserts that if a function smoothly travels over an interval of inputs, then it must take on a minimum and a maximum value at some inputs $x_(min)$ and $x_(max)$.

*Continuity* entails that the outputs of a function are close to one another if the inputs are close. In other words, a small change in the input should only ever produce a proportionately small change in the output. Mathematically speaking, a function $f(x)$ is continuous on a closed interval $[a,b]$ only when

#set align(center)

$a <= x_1 approx x_2 <= b arrow.r.double.long f(x_1) approx f(x_2)$

#set align(left)

where the $approx$ symbol means that two quantities are _approximately_ equal (very close to one another).

With this property fleshed out, we can now go about providing an intuitive argument for the extreme value theorem. We start by dividing up the interval $[a,b]$ into small increments like so:

#set align(center)

$display(a < a + (b-a)/H < a + (2(b-a))/H < dots.h.c < a + (k(b-a))/H < dots.h.c < b) $,

#set align(left)

where $b-a$ is the length of the interval, $H$ is the number of parts the interval is partitioned into, and $k$ is a positive integer between 1 and $H$. Amongst the partition points, $f(x)$ achieves some maximum 
 #v(-2pt) value at one (or possibly more than one) of the partition points $x_M=display(a + (k(b-a))/H)$, so

#set align(center)

#v(5pt) $f(x_M) >= f(x_1)$ for any $x_1=display(a + (j(b-a))/H), j 
!= k$.

#set align(left)

#v(2pt)We know that any input $x$ in the interval $[a, b]$ lies within a distance of $display((b-a)/(2H))$ from one of the
#v(-2pt) partition points. To see why, consider the closed interval [2,12] divided into 5 equal subintervals ($H = 5$) so that the partition points are

#set align(center)

$display(2\, #h(10pt) 2 + (12-2)/5\, #h(10pt) 2 + (2(12-2))/5\, #h(10pt) 2 + (3(12-2))/5\, #h(10pt) 2 + (4(12-2))/5\, #h(10pt) 2 + (5(12-2))/5) \
= #h(5pt) 2, #h(5pt) 4, #h(5pt) 6, #h(5pt) 8, #h(5pt) 10, #h(5pt) 12.$

#set align(left)

Since the size of the interval is 10, and it is being partitioned into 5 subintervals, the distance between each partition point is

#set align(center)

$display((b-a)/H = (12 - 2)/5 = 2).$

#set align(left)

and 

#set align(center)

$display((b-a)/(2H) = 1).$

#set text(9pt)

#figure(
  image("images/number line.png", width: 70%),
  caption: [Partition points visualized]
)

#set align(left)
#set text(10pt)

If we think of the quantity $display((b-a)/(2H))$ as half of the distance between consecutive partition points and 
#v(-2pt) imagine a one-dimensional radius of $display((b-a)/(2H))$ around each partition, then we can see that these radii 
#v(0pt)cover all of the values between the partition points. Therefore, any value of $x$ within the interval must 
#v(0pt) lie within a distance of $display((b-a)/(2H))$ from one of the partition points. \

If we now let $H$ grow exceedingly large to the point where $display((b-a)/(2H))$ becomes infinitesimal, then the set of 
#v(-2pt) partition points will eventually "fill up" the rest of the interval $[a,b]$ so that any value of $x$ within the interval lies infinitely close to one of the partition points. In others words,

#set align(center)

$x approx x_1$ for any $x$ in $[a,b]$,

#set align(left)

which means

#set align(center)

$f(x_M) >= f(x_1) approx f(x)$,

#set align(left)

and this gives us the approximate maximum of $f(x)$. A similar argument can then be made for the approximation of the function's minimum, and this concludes the intuitive argument for the extreme value theorem, although this is by no means a formal proof.\ \