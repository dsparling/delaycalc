require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Delaycalc" do

  before(:each) do
    @bpm = 120
  end

  it "calculates time for whole note delay" do
    expect(@bpm.W).to eq(2000)
  end

  it "calculates time for half note duple delay" do
    expect(@bpm.HD).to eq(1500)
  end

  it "calculates time for half note delay" do
    expect(@bpm.H).to eq(1000)
  end

  it "calculates time for half note triplet delay" do
    expect(@bpm.HT).to eq(667)
  end

  it "calculates time for quarter note duple delay" do
    expect(@bpm.QD).to eq(750)
  end

  it "calculates time for quarter note delay" do
    expect(@bpm.Q).to eq(500)
  end

  it "calculates time for quarter note triplet delay" do
    expect(@bpm.QT).to eq(333)
  end

  it "calculates time for eigth note duple delay" do
    expect(@bpm.ED).to eq(375)
  end

  it "calculates time for eigth note delay" do
    expect(@bpm.E).to eq(250)
  end

  it "calculates time for eigth note triplet delay" do
    expect(@bpm.ET).to eq(167)
  end

  it "calculates time for sixteenth note duple delay" do
    expect(@bpm.SD).to eq(188)
  end

  it "calculates time for sixteenth note delay" do
    expect(@bpm.S).to eq(125)
  end

  it "calculates time for sixteenth note triplet delay" do
    expect(@bpm.ST).to eq(83)
  end

  it "calculates time for thirtysecond note duple delay" do
    expect(@bpm.TD).to eq(94)
  end

  it "calculates time for thirtysecond note delay" do
    expect(@bpm.T).to eq(63)
  end

  it "calculates time for thirtysecond note triplet delay" do
    expect(@bpm.TT).to eq(42)
  end

  it "calculates using convert_bpm method" do
    expect(Delaycalc.convert_bpm(120, 1.0)).to eq(500)
  end
end
