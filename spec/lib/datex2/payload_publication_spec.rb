describe 'lib/transporthacker/datex2/d2_logical_model/payload_publication.rb' do

  it "should allow a new object to be created" do
    expect(TransportHacker::Datex2::D2LogicalModel::PayloadPublication.new()).to be_a TransportHacker::Datex2::D2LogicalModel::PayloadPublication
  end

  it "should parse publicationCreator children" do
    xml_fragment = '<payloadPublication><publicationCreator><country>gb</country><nationalIdentifier>NTCC</nationalIdentifier></publicationCreator></payloadPublication>'
    obj = TransportHacker::Datex2::D2LogicalModel::PayloadPublication.new(xml_fragment)
    expect(obj.publication_creator).to be_a TransportHacker::Datex2::NationalIdentifier
  end

end
