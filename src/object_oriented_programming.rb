# Ruby is a pure object-oriented language and everything appears to Ruby as an object.
# Every value in Ruby is an object, even the most primitive things: strings, numbers and even true and false.
# Even a class itself is an object that is an instance of the Class class.

# In Ruby we declare classes with:

class Warehouse

end

wa01 = Warehouse.new

# Another example:
class Car
  def initialize(brand, model, type)
    @brand = brand
    @model = model
    @type = type
  end
end

audi_s6 = Car.new('Audi', 'S6', 'sedan')

# Private methods
class Locomotive
  def initialize(brand, model, type, axes)
    @brand = brand
    @model = model
    @type = type
    @axes = axes
  end

  private
    def is_freight?
      true if @axes > 6 and @axes < 10
    end
end

eu07 = Locomotive.new('Pafag', 'EU07', 'electic', 6)

# Inheritance
class ElectricUnit < Locomotive
  def initialize(brand, model, type, axes, allowed_passengers)
    @brand = brand
    @model = model
    @type = 'electric'
    @axes = axes
    @allowed_passengers = allowed_passengers
  end

  private
    def is_freight?
      false
    end
end

# Instead of writing getters or setters manually:
class Product
  # Setter
  def price=(value)
    @price = value
  end
  # Getter
  def price
    @price
  end
end

# We can use this:
class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  attr_accessor :name, :price  # read and write
  attr_reader :name   # read only
  attr_writer :price  # write only
end

# Ruby Class Variables
# In Ruby, class variables are attached to the class in which they are declared. A class variable should be declared with two @ symbols preceding it.
class Store
  @@stores = 0

  def initialize(store, city, voivodeship, county, population)
    @store = store
    @city = city
    @voivodeship = voivodeship
    @county = county
    @population = population
    @@stores += 1
  end

  def self.stores_added
    return @@stores
  end

  def is_town
    puts @population <= 20000 ? true : false
  end
end

store_a = Store.new("S001", "Zlotow", "Wielkopolskie", "zlotowski", 18000)
store_b = Store.new("S004", "Pila", "Wielkopolskie", "pilski", 80000)
store_a.is_town
store_b.is_town
puts Store.stores_added

# Another class example
class Product

  def initialize(product, name, group, net_price, minimal_price, tax)
    @product = product
    @name = name
    @group = group
    @net_price = net_price
    @minimal_price = minimal_price
    @tax = tax
    @gross_price = net_price + (net_price * tax)

  end

  attr_reader :product
  attr_accessor :net_price, :minimal_price, :tax, :gross_price

  def description
    puts "The product with code: #{@product}, has initial net price set to: #{@net_price} with tax: #{@tax}, which gives: #{@gross_price} gross price in total. "
  end

end

test_product = Product.new("123456", "LG34NW", "TVAXGLED", 1300.00, 1150.00, 0.23)
test_product.description


# Ruby can be very flexible and elegant in its syntax:
class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  def has_pass?
    true if @pass_id != nil
  end

  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height ? true : false
  end

  def allowed_to_ride?(ride_minimum_height)
    true if @height >= ride_minimum_height && @pass_id != nil
  end
end

# Interface inheritance
module Service
  def change_oil
    puts 'Oil has been changed.'
  end

  def renew_engine
    puts 'Engine has been renewed.'
  end
end

class DieselUnit < ElectricUnit
  include Service
  def initialize(brand, model, type, axes, allowed_passengers)
    @brand = brand
    @model = model
    @type = 'electric'
    @axes = axes
    @allowed_passengers = allowed_passengers
  end

  private
  def is_freight?
    false
  end
end
