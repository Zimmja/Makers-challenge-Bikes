require "docking_station"

describe DockingStation do
  it "Can respond to 'release_bike'" do
    expect { DockingStation.new.release_bike }.not_to raise_error
  end
end