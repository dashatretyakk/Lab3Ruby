# var 11
EPS = 0.00001

def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end

def sum1
  sum = 0.0
  n = 2
  num = 0
  while num.abs >= EPS
    num = (factorial(n - 1) * factorial(n + 1)).to_f / (n * (n + 1))
    sum += num
    n += 1
  end
  sum
end

def ln_x(x)
  sum = 0.0
  n = 0
  num = 1.0
  while num.abs >= EPS
    num = ((x - 1.0) ** (2 * n + 1)) / ((2 * n + 1) * (x + 1.0) ** (2 * n + 1))
    sum += num
    n += 1
  end
  sum
end

def sum2
  sum = 0.0
  n = 1
  num = 1.0
  while num.abs >= EPS
    num = (factorial(2 * n - 1) * factorial(3 * n - 1) * factorial(4 * n)) / (factorial(n) * factorial(2 * n) * (3 ** (2 * n)) * factorial(2 * n))
    sum += num
    n += 1
  end
  sum
end

result_sum1 = sum1
result_ln_x = ln_x(2.0)
result_sum2 = sum2

puts "Сума першого ряду: #{result_sum1}"
puts "Значення ln(2.0): #{result_ln_x}"
puts "Сума другого ряду: #{result_sum2}"

if ((result_sum1 - result_ln_x).abs < EPS) && ((result_sum2 - result_ln_x).abs < EPS)
  puts "Результати задовольняють задану точність ε."
else
  puts "Результати не задовольняють точність ε."
end



