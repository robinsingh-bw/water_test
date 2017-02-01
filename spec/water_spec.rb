require_relative '../water.rb'

describe Water do
  let(:water) { Water.new }

  it "should pass all tests" do
    expect(water.get_water([3,0,3])).to eq 3
    expect(water.get_water([3,0,5])).to eq 3
    expect(water.get_water([3,0,1])).to eq 1
    expect(water.get_water([3,0,0,3])).to eq 6
    expect(water.get_water([3,0,2,0,5])).to eq 7
    expect(water.get_water([3,0,2,0,5])).to eq 7
    expect(water.get_water([3,0,2,0,5,0,0,3])).to eq 13
  end
end
