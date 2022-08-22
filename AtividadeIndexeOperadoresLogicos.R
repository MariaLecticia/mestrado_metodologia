iris$Sepal.Length

iris[1,2]

iris[1:10, 2:5]

iris$Petal.Width <= 0

iris$Petal.Width >= 0 & iris$Petal.Length <=0.2

which(iris$Petal.Width <= 5)

match(iris$Petal.Width, '0.1')

min(iris$Petal.Width)
