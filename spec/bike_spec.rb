require 'bike'

describe Bike do
  it { is_expected.to respond_to(:working?) }

  it 'working? == true when Bike is initialised' do
    expect(Bike.new.working?).to eq true
  end 

  it 'set_working(false) makes working? == false for Bike object' do
    new_bike = Bike.new
    new_bike.set_working(false)
    expect(new_bike.working?).to eq false
  end 
end