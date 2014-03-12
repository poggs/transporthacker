describe 'lib/transporthacker/datex2/d2_logical_model.rb' do

  it "should allow a new object to be created" do
    expect(TransportHacker::Datex2::D2LogicalModel.new()).to be_a TransportHacker::Datex2::D2LogicalModel
  end

  it "should allow a new object to be created from an XML fragment" do
    xml_fragment = '<d2LogicalModel xmlns="http://datex2.eu/schema/1_0/1_0" modelBaseVersion="1.0"></d2LogicalModel>'
    obj = TransportHacker::Datex2::D2LogicalModel.new(xml_fragment)
    expect(obj.model_base_version).to eql('1.0')
  end

  it "should parse exchange children" do
    xml_fragment = '<d2LogicalModel xmlns="http://datex2.eu/schema/1_0/1_0" modelBaseVersion="1.0"><exchange></exchange></d2LogicalModel>'
    obj = TransportHacker::Datex2::D2LogicalModel.new(xml_fragment)
    expect(obj.exchange).to be_a TransportHacker::Datex2::D2LogicalModel::Exchange
  end

  it "should parse payloadPublication children" do
    xml_fragment = '<d2LogicalModel xmlns="http://datex2.eu/schema/1_0/1_0" modelBaseVersion="1.0"><payloadPublication xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="PredefinedLocationsPublication" lang="en"></payloadPublication></d2LogicalModel>'
    obj = TransportHacker::Datex2::D2LogicalModel.new(xml_fragment)
    expect(obj.payload_publication).to be_a TransportHacker::Datex2::D2LogicalModel::PayloadPublication
  end

end
