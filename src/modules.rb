# Ruby Modules

# Module
module Driveable
  def message
    'The object is drivable'
  end
end

class Car
  include Driveable
end

class Tank
  include Driveable
end

Car.new.message
Tank.new.message
Tank.ancestors

# Mixins
module Garage
  def g1
  end
  def g2
  end
end

module Warehouse
  def w1
  end
  def w2
  end
end

class Dock
  include Garage
  include Warehouse

  def d1
  end
end

example = Dock.new
example.d1
example.g1
example.g2
example.w1
example.w2
