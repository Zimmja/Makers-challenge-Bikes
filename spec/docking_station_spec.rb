require 'docking_station'

describe DockingStation do 
   docking_station = DockingStation.new
   new_bike = Bike.new

   it "Expects an error when there ARE NOT bikes docked" do
    expect { subject.release_bike }.to raise_error("There are no bikes")
   end

   it "Expects an error when there ARE bikes docked" do
      subject.dock_bike(Bike.new)
      expect { subject.dock_bike(Bike.new) }.to raise_error("There are already bikes docked")
   end
  
   it { expect(docking_station).to respond_to(:release_bike) }
   it { expect(new_bike).to respond_to(:working?) }
   it { expect(new_bike.working?).to eq true }

   it { is_expected.to respond_to(:dock_bike).with(1).argument}

   it "docks something" do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
   end
end 

