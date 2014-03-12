describe 'lib/transporthacker/datex2/international_identifier.rb' do

  it "should allow a new object to be created" do
    expect(TransportHacker::Datex2::InternationalIdentifier.new()).to be_a TransportHacker::Datex2::InternationalIdentifier
  end

  it "should allow a new object to be created from an XML fragment" do
    xml_fragment = '<dummy><country>gb</country><nationalIdentifier>NTCC</nationalIdentifier></dummy>'
    obj = TransportHacker::Datex2::InternationalIdentifier.new(xml_fragment)
    expect(obj.supplier_country).to eql('gb')
    expect(obj.supplier_national_identifier).to eql('NTCC')
  end


end
