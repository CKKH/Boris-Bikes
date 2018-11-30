require 'docking_station'
describe DockingStation do
  describe "#release_bike" do

    it 'should cause an error if the Docking Station is empty' do
      docking_station = DockingStation.new
      expect{docking_station.release_bike}.to raise_error
    end

    it 'It responds to release_bike' do
      docking_station = DockingStation.new
      expect{docking_station.to respond_to(:release_bike)}
    end

    it 'It returns a working bike' do
      bike = Bike.new
      expect{bike.working?.eql?(true)}
    end

  end

  describe "#dock" do
  #  let(:bikes) {docking_station = DockingStation.new}

    it 'sets capacity to defaut capacity when no arguments passed' do
      docking_station = DockingStation.new
      expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'should cause an error if the Docking Station is full' do
      bike = Bike.new
      docking_station = DockingStation.new
      docking_station.dock(bike)
      expect{DockingStation::DEFAULT_CAPACITY.times{docking_station.dock(bike)}}.to raise_error
    end

    it 'docks something' do
      bike = Bike.new
      expect{(subject.dock(bike)).to respond_to(:dock_bike)}
    end
end

describe 'initialization' do
  docking_station = DockingStation.new
  bike = Bike.new
  it 'defaults capacity' do
    DockingStation::DEFAULT_CAPACITY.times do
      docking_station.dock(bike)
    end
    expect{ docking_station.dock(bike) }.to raise_error 'Docking Station Full'
  end
end
end
