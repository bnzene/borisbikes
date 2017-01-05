class DockingStation
  attr_reader :bike
 def release_bike
   return Bike.new
 end

 def dock_bike(bike)
   @bike = bike
 end

 def docked_bikes
   return @bike.inspect if @bike != nil
 end

 def no_docked_bikes
   raise "No bikes available" if @bike == nil
 end

 def station_full
   raise "Station full" if @bike == DockingStation.release_bike.dock_bike
 end

end
