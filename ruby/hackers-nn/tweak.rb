#!/usr/bin/ruby

# Constants
NegativeInfinity = -1.0/0.0 

def forwardMultiplyGate(x, y)
  return x*y
end

def output(best_x, best_y, best_out)
  puts "best_x: #{best_x}, best_y: #{best_y}, best_out: #{best_out}"
end

x = -1
y = 3

tweak_amount = 0.01
best_out = NegativeInfinity
best_x = x
best_y = y

for k in 0..1000 do
  x_try = x + tweak_amount * (rand(1) * 2 - 1) # tweak x a bit
  y_try = y + tweak_amount * (rand(1) * 2 - 1) # tweak y a bit
  out = forwardMultiplyGate(x_try, y_try);

  if(out > best_out)
    # best improvement yet! Keep track of the x and y
    best_out = out
    best_x = x_try
    best_y = y_try
    output(best_x, best_y, best_out)

  end
end

puts "best_x: #{best_x}"
puts "best_y: #{best_y}"
puts "best_out: #{best_out}"


