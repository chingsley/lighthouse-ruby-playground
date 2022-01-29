require_relative 'boat'

describe Boat do
  it 'should create boats' do
    expect(Boat.new).to be_a Boat
  end

  describe '#allowed_aboard?' do
    before do
      @a_boat = Boat.new
    end
    it 'returns true if inventory includes a life jacket' do
      allowed = @a_boat.allowed_aboard?(['life jacket', 'sun glasses'])
      expect(allowed).to be true
    end
    it 'returns false if inventory does not include life jacket' do
      expect(@a_boat.allowed_aboard?(['sun glasses'])).to be false
    end
  end
end