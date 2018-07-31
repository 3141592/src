#!/usr/bin/ruby
require 'pry'
require 'gruff'

# Constants
NegativeInfinity = -1.0/0.0 

def forwardMultiplyGate(x, y)
  return x*y
end

def output(best_x, best_y, best_out)
  puts "best_x: #{best_x}, best_y: #{best_y}, best_out: #{best_out}"
end

def dx(x, y, h)
  return (forwardMultiplyGate(x+h, y) - forwardMultiplyGate(x, y))/h
end

def dy(x, y, h)
  return (forwardMultiplyGate(x, y+h) - forwardMultiplyGate(x, y))/h
end

h = 0.0001
x = -3.0
y = 3.0

y_values = []
points = []
out_values = []

best_out = NegativeInfinity
best_x = x
best_y = y

for k in 0..500 do
  #puts("dx(x, y, h): #{dx(x, y, h)}")
  x = x + 0.01 * dx(x, y, h) # x becomes -1.97
  #puts("dx(x, y, h): #{dy(x, y, h)}")
  y = y + 0.01 * dy(x, y, h) # y becomes 2.98
  out = forwardMultiplyGate(x, y);
  #output(best_x, best_y, best_out)
  points << [x ,y]
  y_values << y
  #out_values << out

  if(out > best_out)
    # best improvement yet! Keep track of the x and y
    best_out = out
    best_x = x
    best_y = y
    output(best_x, best_y, best_out)
    out_values << best_out

  end
end

# graph it
g = Gruff::Line.new
g.data :Derivative, out_values
g.write("#{Time.now.strftime('%c').gsub(" ","-")}.png")
#binding.pry


