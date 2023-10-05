# var 11
N = 10
c = 5

puts "Табулювання функції y:"
(N+c).times do |i|
  x = 1 + i
  y = Math.sqrt((x**(2/c) + N**(2/c))**2 - 4*x**(2/c + 2/N)) / Math.sqrt((x**(1/N) - x**(1/c))**2 + 3*x**(1/N+1/c)) + (x**2 + 2*x - 4)/c + x
  puts "x = #{x}, y = #{y}"
end

puts "\nТабулювання функції z:"
((Math::PI/N)..Math::PI).step((3/2.0)*N + c) do |x|
  z = ((Math.sin(x)**2 + Math.tan(x)**2)**c + 1) * (Math.cos(x)**2 - Math.tan(x)**2 + 1) / ((Math.cos(x)**2 + Math.tan(x)**2 + 1) * (Math.sin(x)**2 + Math.tan(x)**2 - 1))
  puts "x = #{x}, z = #{z}"
end

puts "\nТабулювання функції f:"
(2*N).times do |i|
  x = 2 + i
  if 2 < x && x < N
    f = Math.sqrt((x**(2/c) + N**(2/c))**2 - 4*x**(2/c + 2/N)) / Math.sqrt((x**(1/N) - x**(1/c))**2 + 3*x**(1/N+1/c)) + (x**2 + 2*x - 4)/c + x
  else
    f = ((Math.sin(x)**2 + Math.tan(x)**2)**c + 1) * (Math.cos(x)**2 - Math.tan(x)**2 + 1) / ((Math.cos(x)**2 + Math.tan(x)**2 + 1) * (Math.sin(x)**2 + Math.tan(x)**2 - 1))
  end
  puts "x = #{x}, f = #{f}"
end


