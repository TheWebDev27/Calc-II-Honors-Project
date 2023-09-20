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

takes a set of inputs (x) and produces a corresponding set of their squares (f(x)) in the form of *ordered pairs*:

#set align(center)

#table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [x], [y],
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