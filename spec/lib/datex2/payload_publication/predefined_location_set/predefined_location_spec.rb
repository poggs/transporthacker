describe 'lib/transporthacker/datex2/d2_logical_model/payload_publication/predefined_location_set/predefined_location.rb' do

  it "should allow a new object to be created" do
    expect(TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet::PredefinedLocation.new()).to be_a TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet::PredefinedLocation
  end

  # it "should parse the predefinedLocationSetName element" do
  #   xml_fragment = '<predefinedLocationSet id="TestLocationSet"><predefinedLocationSetName><value lang="en">Test Location Set</value></predefinedLocationSetName></predefinedLocationSet>'
  #   obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet.new(xml_fragment)
  #   expect(obj.location_set_id).to eql('TestLocationSet')
  #   expect(obj.location_set_name).to be_a? TransportHacker::Datex2::i18nValue
  # end

  # it "should parse the predefinedLocation element" do
  #   xml_fragment = '<predefinedLocationSet id="TestLocationSet"><predefinedLocation id="Test1"></predefinedLocation></predefinedLocationSet>'
  #   obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet.new(xml_fragment)
  #   expect(obj.location_set).to be_a(Array)
  #   expect(obj.location_set.count).to eql(1)
  #   expect(obj.location_set.first).to be_a(TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet::PredefinedLocation)
  # end
  # 
  # it "should parse multiple predefinedLocation elements" do
  #   xml_fragment = '<predefinedLocationSet id="TestLocationSet"><predefinedLocation id="Test1"></predefinedLocation></predefinedLocationSet>'
  #   obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet.new(xml_fragment)
  #   expect(obj.location_set).to be_a(Array)
  #   expect(obj.location_set.count).to eql(2)
  #   expect(obj.location_set.first).to be_a TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet::PredefinedLocation
  #   expect(obj.location_set.last).to be_a (TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet::PredefinedLocation)
  # end

end
