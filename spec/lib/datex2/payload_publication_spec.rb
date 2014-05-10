describe 'lib/transporthacker/datex2/d2_logical_model/payload_publication.rb' do

  it "should allow a new object to be created" do
    expect(TransportHacker::Datex2::D2LogicalModel::PayloadPublication.new()).to be_a TransportHacker::Datex2::D2LogicalModel::PayloadPublication
  end

  it "should parse the publicationTime element" do
    xml_fragment = '<payloadPublication><publicationTime>2014-03-21T11:56:52Z</publicationTime></payloadPublication>'
    obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication.new(xml_fragment)
    expect(obj.publication_time).to be_a Time
  end

  it "should parse the publicationCreator element" do
    xml_fragment = '<payloadPublication><publicationCreator><country>gb</country><nationalIdentifier>NTCC</nationalIdentifier></publicationCreator></payloadPublication>'
    obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication.new(xml_fragment)
    expect(obj.publication_creator).to be_a TransportHacker::Datex2::NationalIdentifier
  end

  it "should parse the headerInformation element" do
    xml_fragment = '<payloadPublication><headerInformation></headerInformation></payloadPublication>'
    obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication.new(xml_fragment)
    expect(obj.header_information).to be_a TransportHacker::Datex2::D2LogicalModel::PayloadPublication::HeaderInformation
  end

end
