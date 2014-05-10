describe 'lib/transporthacker/datex2/d2_logical_model/payload_publication/header_information.rb' do

  it "should allow a new object to be created" do
    expect(TransportHacker::Datex2::D2LogicalModel::PayloadPublication::HeaderInformation.new()).to be_a TransportHacker::Datex2::D2LogicalModel::PayloadPublication::HeaderInformation
  end

  it "should parse the areaOfInterest element" do
    xml_fragment = '<headerInformation><areaOfInterest>national</areaOfInterest></headerInformation>'
    obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication::HeaderInformation.new(xml_fragment)
    expect(obj.area_of_interest).to eql('national')
  end

  it "should parse the confidentiality element" do
    xml_fragment = '<headerInformation><confidentiality>restrictedToAuthoritiesTrafficOperatorsAndPublishers</confidentiality></headerInformation>'
    obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication::HeaderInformation.new(xml_fragment)
    expect(obj.confidentiality).to eql('restrictedToAuthoritiesTrafficOperatorsAndPublishers')
  end

  it "should parse the informationUsage element" do
    xml_fragment = '<headerInformation><informationUsage>broadcast</informationUsage></headerInformation>'
    obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication::HeaderInformation.new(xml_fragment)
    expect(obj.information_usage).to eql('broadcast')
  end

  it "should parse the informationStatus element" do
    xml_fragment = '<headerInformation><informationStatus>real</informationStatus></headerInformation>'
    obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication::HeaderInformation.new(xml_fragment)
    expect(obj.information_status).to eql('real')
  end

end
