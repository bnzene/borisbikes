require "docking_station.rb"

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
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
