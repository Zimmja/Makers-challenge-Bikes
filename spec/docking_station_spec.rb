require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    expect(subject.release_bike).to be_working
  end
end

=begin
  it "Can respond to 'release_bike'" do
    expect { DockingStation.new.release_bike }.not_to raise_error
  end
  it "Can respond to 'release_bike'" do
    expect(subject).to respond_to :release_bike
  end
=end