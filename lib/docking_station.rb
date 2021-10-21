require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(cap = DEFAULT_CAPACITY)
    @bikes_arr = []
    @capacity = cap
  end

  def release_bike
    fail 'No bikes available' if !self.has_bikes?
    @bikes_arr.delete_at(@bikes_arr.index { |b| b.working? })
  end

  def dock(docked_bike, working=true)
    fail 'No capacity at docking station' if self.full?
    docked_bike.set_working(working) 
    @bikes_arr << docked_bike
    docked_bike
  end

  def bike_count
    @bikes_arr.count
  end

  private

  def has_bikes?
    @bikes_arr.select { |b| b.working? }.count > 0
  end
  
  def full?
    @bikes_arr.count >= @capacity
  end
end