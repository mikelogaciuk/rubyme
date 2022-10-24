# Ruby Object methods

# Base
name = 'Alice'
concat = "I love #{name} <3"

# String methods
name.empty?
'How long am I?'.length
name.upcase
name.downcase
' Trim   me    please'.strip
'SERVERX001'.start_with?('SERVER')
'XOR'.gsub('X', 'S')
'I love Ruby'.include? 'Ruby'

# Number methods
magic_number = 89.02
magic_number.floor
magic_number.ceil
magic_number.round

# Array methods
manufacturers = ['Audi', 'Opel', 'Skoda', 'Fiat']
manufacturers = %w[Audi Opel Skoda Fiat]
manufacturers.length
manufacturers.last
manufacturers.first
manufacturers[1]
manufacturers[0..2]
manufacturers.include? 'Ferrari'
manufacturers.pop # remove last element
manufacturers.shift # remove first element
manufacturers.push 'Ferrari' # append at the and
manufacturers << 'Pagani' # append at the end
manufacturers.unshift # append at the start
manufacturers.delete_at(2) # delete third element

# Hash methods
product = {}
product[:name] = 'Intel i5-12600K CPU'
product[:price] = 1599.00
product.keys
product.values

product.each do |key, value|
  puts key
  puts value
end