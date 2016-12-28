#write your code here

def add(op1, op2)
  op1 + op2
end

def subtract(op1, op2)
  op1 - op2
end

def sum(array)
  sum = 0
  array.each do |i|
    sum += i
  end
  sum
end

def multiply(op1, op2)
  op1 * op2
end

def power(base, exp)
  base ** exp
end

def factorial(n)
  if n == 0 or n == 1
    return 1
  end
  n * factorial(n-1)
end
