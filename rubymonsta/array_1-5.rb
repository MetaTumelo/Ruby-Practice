numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers = numbers.select { |number| number.even? }.reverse

num1 = numbers - [6]
num2 = numbers.reject { |number| number == 6 }
p num1
p num2
