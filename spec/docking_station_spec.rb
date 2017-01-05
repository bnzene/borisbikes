require "docking_station.rb"

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'expects bike to be working' do
    expect(((DockingStation.new).release_bike).working?).to eq nil
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'returns a docked bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end
end

=begin (one-liner syntax; also passes test)
describe "responds to release_bike" do
  it { should respond_to :release_bike }
end
=end

describe Bike do
  it 'responds to working?' do
    expect(subject).to respond_to :working?
  end
end
