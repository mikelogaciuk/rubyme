# Ruby Conditionals

# Basic if-else
a = 10
if a == 10
  puts 'Number equals to .'
elsif a < 10
  puts 'Number is less than 10.'
else
  puts 'Number is higher than 10.'
end

# Case conditional
# In Ruby, you can use case statement instead of if-elsif-else loop
secret_number = 444

case
when secret_number < 333
  puts "You are not even close..."
when secret_number > 666
  puts "You've almost touched it..."
when
secret_number == 666
  puts "You found the devil."
else
  puts "Oh my gosh... guess that god damn evil number..."
end

# Ruby short if
num = 2
puts "This number is even!" if num % 2 == 0