puts "Hey bru (South African term for \"bro\").  Lets compute the quadratic formula"

puts "Give me an A"

A=gets.to_i

puts "B?"

B=gets.to_i

puts "C?"

C=gets.to_i

puts "Computing"

root_term = B*B-4*A*C

x1=(-B + Math.sqrt(root_term))/2*A

x2=(-B - Math.sqrt(root_term))/2*A

puts "x is:"

puts x1

puts "or"

puts x2

puts "Goodbye"

