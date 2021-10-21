require 'docking_station'

describe DockingStation do
  bike = Bike.new
  
  describe '#release_bike' do
    it 'releases a bike if capacity > 0' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when capacity == 0' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'will not release broken bikes' do
      subject.dock(bike, false)
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'will release only working bikes' do
      subject.dock(bike)
      3.times { subject.dock(Bike.new, false) }
      expect(subject.release_bike.working?).to eq true
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'adds objects to @bikes_arr' do
      bc = subject.bike_count
      subject.dock(bike)
      expect(subject.bike_count - bc).to eq 1
    end

    it 'doesn\'t dock a bike if capacity reached' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
      expect { subject.dock(bike) }.to raise_error 'No capacity at docking station'
    end

    it 'can dock up to the capacity of bikes' do
      ((DockingStation::DEFAULT_CAPACITY) - 1).times { subject.dock(Bike.new) }
      expect(subject.dock(bike)).to eq bike
    end

    it 'can report bikes as broken by passing "false" as a second argument' do
      expect(subject.dock(bike, false).working?).to eq false
    end
  end

  it 'initialising with integer argument changes capacity' do
    new_docking_station = DockingStation.new(15)
    expect(new_docking_station.capacity).to eq 15
  end

  it 'default capacity is set to 20 when no arguments are passed' do
    new_docking_station = DockingStation.new
    expect(new_docking_station.capacity).to eq 20
  end
end