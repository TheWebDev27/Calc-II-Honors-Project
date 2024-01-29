#set text(
    font: "New Computer Modern",
    size: 11pt
)

Let $n$ be the number of rows of equal-size circles packed into an equilateral triangle, where each circle fills up as much space as possible while lying tangential to other circles or to the edge of the triangle (or both). Let $C_n$ be the number of circles for some corresponding $n$ such that $C_1 = 1$, $C_2 = 1+2$, $C_3 = 1+2+3$, and so on. If $A$ is the area of the triangle, and $A_n$ is the collective area of the $C_n$ circles, show that

#set align(center)

$display(lim_(n arrow infinity)(A_n)/A = pi/(2sqrt(3)))$

#v(15pt)

#figure(
    image("images/circles in triangle.png", width: 40%)
)

$display(sum_(k=1)^n = (n(n+1))/n)$