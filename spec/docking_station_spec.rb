require "docking_station.rb"

describe DockingStation do
  bike = Bike.new
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'expects bike to be working' do
    expect(((DockingStation.new).release_bike).working?).to eq nil
  end

  it 'docks a bike' do
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'returns a docked bike' do
    expect(subject.dock_bike(bike)).to eq bike
  end
# return number of bikes in docking station and raise error if none
  it 'raises an error when no bikes' do
    expect { subject.no_docked_bikes }.to raise_error("No bikes available")
  end

  it 'raises an error when dock is full' do
    expect { subject.station_full }.to raise_error("Station full")
  end
end

=begin (one-liner syntax; also passes test)
describe "responds to release_bike" do
  it { should respond_to :release_bike }
end
=end
