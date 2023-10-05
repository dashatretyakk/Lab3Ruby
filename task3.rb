# var 11
def task2
  sum = 0
  9.times.each { |i|
    sum += (i + 1.0) / (i + 2.0) * (2.0 / 3.0) ** i
  }
  sum
end

def task3(x)
  print "Enter n (1 <= n <= 10): "
  n = gets.to_i

  if n >= 1 && n <= 10
    sum = 1.0
    fact = 1
    (1..n).each { |i|
      fact *= i
      sum += (x ** i) / fact
    }
    sum
  else
    puts "Недопустиме значення n. Введіть n в межах від 1 до 10."
    nil
  end
end

puts "Task2: #{task2}"

print "Task 3: Enter x: "
x = gets.to_f
result = task3(x)

if result
  puts "Task3: #{result}"
end


