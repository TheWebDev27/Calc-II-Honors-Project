#show heading: set text(size: 14pt)

#set text(
    font: "New Computer Modern",
    size: 16pt
)

#set align(center)

#text(weight: "bold")[The Classical and Nonstandard  Analyses of Limits] \

#set text(
    size: 12pt
)

Preston Vo \ \ \

#set text(
    size: 10pt
)

#set align(center)

= Introduction

#set align(left)

A *set* is a collection of elements. These elements can be anything: numbers, shapes, colors, and so on. For instance, consider the set A of the primary colors:

#set align(center)

$A = {"red, blue, yellow"}$

#set align(left)

A *function* is a mapping between the elements of two sets where each element from one set is assigned to exactly one element from the other. In the realm of single variable calculus, functions predominantly deal with sets of real numbers. For example, the function

#set align(center)

$f(x)=x^2$

#set align(left)

takes a set of inputs (x) and produces a corresponding set of their squares f(x) in the form of *ordered pairs*:

#set align(center)

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: center,
    [x], [f(x)],
    $-3$, $9$,
    $-2$, $4$,
    $-1$, $1$,
    $0$, $0$,
    $1$, $1$,
    $2$, $4$,
    $3$, $9$
)

#set align(left)

Plotting these points on the XY coordinate plane produces the following graph:

#set align(center)

#figure(
    image("images/parabola.png", width: 55%)
)

#set align(left)

*Limits* analyze how the outputs of such functions behave as their inputs ($x$) approach either a particular point or $infinity$. For example, the parabolic function above approaches 4 as $x$ approaches $2$ and is denoted like so:

#set align(center)

$lim_(x -> 2)x^2=4$

#set align(left)

As $x$ approaches $infinity$, $x^2$ also approaches $infinity$:

#set align(center)

$lim_(x -> infinity)x^2 = infinity$

#set align(left)

I intend to explore two approaches of rigorously defining the limit. The first employs the *epsilon-delta* definition of the limit, while the second utilizes the concept of *hyperreal numbers*.

#set align(center)

= The Classical Approach

#set align(left)

#text(14pt)[
  The Definition
]

*Real analysis* is essentially the rigorous version of calculus. It seeks to strictly define and prove the mechanisms and ideas presented in calculus. For this section, I will be following section A.2 of Appendix A of 

#set align(center)

Simmons, G. (1996). _Calculus With Analytic Geometry_ (2nd ed.) Mcgraw-Hill Education.

#set align(left)

Being mindful of the fact that the absolute value of the difference between two values ($|a - b|$) represents the distance between them will greatly aid in understanding the notation below. The limit is defined in the following manner:

#set align(center)

#grid(
    columns: 80%,
    rows: auto,
    [
        #set align(left)

        Let a function $f(x)$ be defined on some interval containing the number $c$ such that there are $x$'s in the domain of $f(x)$ where

        #set align(center)

        $0 < |x - c| < delta$

        #set align(left)

        for every positive number $delta$. The statement

         #set align(center)

        $lim_(x -> c)f(x) = L$
    ],
    [
        \
        \
    ],
    [
        #set align(left)

        is then defined like so: For every positive number $epsilon$, there exists a positive number $delta$ such that

        #set align(center)

        $|f(x) - L| < epsilon$

        #set align(left)

        for every $x$ in the domain of $f(x)$ where

        #set align(center)

        $0 < |x - c| < delta$
    ]
)

#set align(left)

This definition states that $f(x)$ approaches $L$ as x approaches a certain value if it can be shown that, for any set of outputs that lie within some distance $epsilon$ from $L$, there exists a corresponding set of inputs ($x$'s) that lie within some distance $delta$ from $c$ which _guarantees_ that $f(x)$ falls within said range of $L$. In this sense, we can bring the range of outputs as close as we want to $L$ (letting epsilon go to 0) while being absolutely sure that $f(x)$ lies within it. This is known as the *epsilon-delta definition* of the limit.

#figure(
    image("images/epsilon-delta limit visualization.png", width: 65%),
)

The image above is a visualization of the epsilon-delta definition. One minor detail to note is how it shows $delta_1$ and $delta_2$ instead of simply $delta$. This is because the $x$ corresponding to $L - epsilon$ does not necessarily lie the same distance away from $c$ as the $x$ corresponding to $L + epsilon$, since the rate at which $f(x)$ changes may vary as $x$ sweeps from $c - delta_1$ to $c + delta_2$. This complication can be readily resolved by letting $delta$ equal the smaller of $delta_1$ and $delta_2$:

#set align(center)

$delta = min(delta_1 , delta_2)$

#set align(left)

$min()$ is shorthand for taking the minimum value of the set of numbers present in the parentheses. Allowing $delta$ to be defined in this way works because of the following reasoning: Assume that $delta_1 > delta_2$. If |x

#text(14pt)[
  Employing the Definition
]

The epsilon-delta definition of the limit can now be used to prove various facts and properties. As a basic example, consider the following theorem:

#set align(center)

#grid(
    columns: 80%,
    rows: auto,
    [
        #set align(left)

        *Theorem 1* \
        If f(x) = x, then $lim_(x -> a)f(x) = a$, or

        #set align(center)

        $lim_(x -> a)x = a$
    ]
)

#set align(left)

To prove this, choose some $epsilon > 0$, and let $delta = epsilon$. For any $x$ satisfying the inequalities $0 < |x - a| < delta$, we know that $|f(x) - a| < epsilon$. This is because $f(x) = x$, and $delta = epsilon$. The theorem is therefore proven. 

We can also prove some essential limit laws: their sums, differences, products, and quotients. 

#set align(center)

#grid(
    columns: 80%,
    rows: auto,
    [
        #set align(left)

        *Theorem 2 - Limit Laws* \
        If $lim_(x -> a)f(x) = L$ and $lim_(x -> a)g(x) = M$, then

        #table(
            columns: (20pt, auto),
            align: (right, left),
            stroke: none,
            [(i)], $lim_(x -> a)[f(x + g(x))] = L + M$,
            [(ii)], $lim_(x -> a)[f(x - g(x))] = L - M$,
            [(iii)], $lim_(x -> a)f(x)g(x) = L M$,
            [(iv)], $lim_(x -> a)f(x)/g(x) = L/M$
        )
    ]
)

#set align(left)

To prove (i), we let $epsilon > 0$ be given and allow $delta_1, delta_2 > 0$ where

#set align(center)

$0 < |x - a| < delta_1 => |f(x) - L| < 1/2 epsilon$

#set align(left)

and

#set align(center)

$0 < |x - a| < delta_2 => |f(x) - M| < 1/2 epsilon$

#set align(left)

For those who are unfamiliar with the $=>$ symbol, it means that the statement following it is implied or logically follows from the statement preceding the symbol.

The $1/2$ in front of the $epsilon$'s may cause some confusion, but recall that when $lim_(x -> c)f(x) = L$, the epsilon-delta definition tells us that there exists a set of $x$'s lying within some distance $delta$ from $c$ such that the distance between $f(x)$ and $L$ is always less than $epsilon$ ($|f(x) - L| < epsilon$.) Knowing this, it is then clear that if there exists $delta > 0$ such that $|f(x) - L| < 1/2 epsilon$ for some $epsilon > 0$, then $|f(x) - L| < epsilon$ is also implied, because $1/2 epsilon$ is smaller than $epsilon$.

Continuing the proof, we let $delta$ 