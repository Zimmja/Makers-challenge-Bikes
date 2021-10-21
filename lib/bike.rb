class Bike
  def initialize
    set_working(true)
  end

  def set_working(status)
    @working = status
  end

  def working?
    @working
  end
end