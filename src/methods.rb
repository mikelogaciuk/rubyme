# Ruby Methods (functions)

#
# In Ruby, the combined comparison operator, <=>, also known as the spaceship operator is used to compare two objects.
# It returns 0 if the first operand equals the second, 1 if the first operand is greater than the second, and -1 if the first operand is less than the second.

puts "Freya" <=> "Alice"

puts 4 <=> 6
puts 666 <=> 6

# Simple method (function)
require 'socket'
def hostname
  Socket.gethostname
end

# In order to return value from methods (aka function)
# We use the same keyword as in Python or any other language or use puts
def count_tax(income, tax_value)
  # Tax value must be double/float
  result = income + (income * tax_value)
end

shop_item_value = 1000
eligible_tax = 0.19
puts count_tax(shop_item_value, eligible_tax)


# Ruby Lambda Methods
add = lambda { |x,y| x + y }
sub = lambda { |x,y| x - y }

def math(method, x, y)
  method.call(x,y) * 2
end

# Ruby yield Keyword
# In Ruby, the yield keyword is used to transfer control from a method to a block and then back to the method once executed.
def yield_test
  puts "I'm inside the method."
  yield
  puts "I'm also inside the method."
end

yield_test { puts ">>> I'm butting into the method!" }
#Output
# I'm inside the method.
# >>> I'm butting into the method.
# I'm also inside the method.