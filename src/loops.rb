# Ruby Loops

# Until loop
cars = 0
until cars == 10
  cars += 1
end

# Unless loops
x = 1
y = 666

unless x >= y
  puts "Warning! X: #{x} is less than Y: #{y}."
end

# Simple unconventional loop
for i in 1..100
  next if i % 2 == 0
  puts i
end

# Simple Ruby loop
(1..100).each { |i|
  next if i % 2 == 0
  puts i
}

# Break loop
numbers = [1,2,4,9,12]
numbers.each do |n|
  break if n > 10
  puts n
end

# While loop
foo = 666
while foo < 999
  puts foo
  foo += 1
end

# Another simple loop
9.times { puts "Hello World" }