require_relative 'bike'

class DockingStation

    def release_bike
        fail "There are no bikes" unless @bike 
        @bike
    end

    def dock_bike(mybike)
        fail "There are already bikes docked" if @bike 
        @bike = mybike
    end

    def see_bike
        @bike
    end

    attr_reader :see_bike
end