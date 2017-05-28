class FoodTruck
  attr_reader :name, :address, :start_time, :end_time

  def initialize(name, address, start_time, end_time)
    @name = name
    @address = address
    @start_time = start_time
    @end_time = end_time
  end
end
