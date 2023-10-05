# var 11
def Y(x)
  case x
  when -2..2
    return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
  when 2..8
    return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0/4.5)
  else
    return 1 / ( 1 + x / (1 + x / (1 + x)))
  end
end

puts "Y(-1) = #{Y(-1)}"
puts "Y(2) = #{Y(2)}"
puts "Y(5) = #{Y(5)}"
puts "Y(10) = #{Y(10)}"




