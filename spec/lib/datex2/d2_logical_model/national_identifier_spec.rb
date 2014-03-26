describe 'lib/transporthacker/datex2/national_identifier.rb' do

  it "should allow a new object to be created" do
    expect(TransportHacker::Datex2::NationalIdentifier.new()).to be_a TransportHacker::Datex2::NationalIdentifier
  end

  it "should allow a new object to be created from an XML fragment" do
    xml_fragment = '<publicationCreator><country>gb</country><nationalIdentifier>NTCC</nationalIdentifier></publicationCreator>'
    obj = TransportHacker::Datex2::NationalIdentifier.new(xml_fragment)
    expect(obj.country).to eql('gb')
    expect(obj.national_identifier).to eql('NTCC')
  end

end
