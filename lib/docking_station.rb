class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?#@bikes.length != 0
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full' if @bikes.length == 20#.length >= 20
    @bikes << bike #s << bike
  end

end

class Bike
  def working?
    true
  end
end
