# var 11
A = true
B = false
C = false
X = 4
Y = 120
Z = -20

# a) ¬(A ∨ B) ∧ (A ∧ ¬B)
result_a = (!A && !B) && (A && !B)

# b) (Z ≠ Y) ≤ (6 ≥ Y) ∧ A ∨ B ∧ C ∧ X ≥ 1.5
result_b = (Z != Y) && ((6 >= Y) && (A || B) && C && (X >= 1.5))

# c) (8 – X * 2 ≤ Z) ∧ (X^2 <> Y^2)) ∨ (Z ≥ 15)
result_c = ((8 - X * 2 <= Z) && (X**2 != Y**2)) || (Z >= 15)

# d) X > 0 ∧ Y < 0 ∨ Z ≥ (X*Y – (–Y/X))+(–Z)
result_d = ((X > 0) && (Y < 0)) || (Z >= (X*Y - (-Y/X)) + (-Z))

# e) ¬(A ∨ B ∧ ¬(C ∨ (¬A ∨ B)))
result_e = !((A || B) && !(C || (!A || B)))

# f) X^2 + Y^2 ≥ 1 ∧ X ≥ 0 ∧ Y >= 0
result_f = ((X**2 + Y**2 >= 1) && (X >= 0) && (Y >= 0))

# g) (A ∧ (C ∧ B <>B ∨  A) ∨ C) ∧ B
result_g = ((A && (C && (B != B) || A) || C) && B)

puts "a) Result A: #{result_a}"
puts "b) Result B: #{result_b}"
puts "c) Result C: #{result_c}"
puts "d) Result D: #{result_d}"
puts "e) Result E: #{result_e}"
puts "f) Result F: #{result_f}"
puts "g) Result G: #{result_g}"


x = 7
P = false

result = (Math.log(x) < x) && !P && (Math.sqrt(x) > x * x) || (2 * x == x)

puts "Result: #{result}"


