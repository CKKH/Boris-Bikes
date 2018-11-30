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
    let(:bikes) {docking_station = DockingStation.new}

    it 'should cause an error if the Docking Station is full' do
      bike = Bike.new
      docking_station = DockingStation.new
      docking_station.dock(bike)
      #bikes << 20.times.push(Bike.new
      expect{20.times{docking_station.dock(bike)}}.to raise_error
    end

    it 'docks something' do
      bike = Bike.new
      expect{(subject.dock(bike)).to respond_to(:dock_bike)}
    end

  end
end
