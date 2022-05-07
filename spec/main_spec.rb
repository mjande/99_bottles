require './lib/main'

describe Bottles do
  describe '#verse' do 
    subject(:bottles) { described_class.new }

    it 'returns the first verse' do
      expect(bottles.verse(99)).to eq(
        "99 bottles of beer on the wall, " +
        "99 bottles of beer. \n" +
        "Take one down and pass it around, " +
        "98 bottles of beer on the wall. \n"
      )
    end

    it 'returns another verse' do 
      expect(bottles.verse(50)).to eq(
        "50 bottles of beer on the wall, " +
        "50 bottles of beer. \n" +
        "Take one down and pass it around, " +
        "49 bottles of beer on the wall. \n"
      )
    end

    it 'returns another verse' do
      expect(bottles.verse(3)).to eq(
        "3 bottles of beer on the wall, " +
        "3 bottles of beer. \n" +
        "Take one down and pass it around, " +
        "2 bottles of beer on the wall. \n"
      )
    end

    it 'returns verse 2' do
      expect(bottles.verse(2)).to eq(
        "2 bottles of beer on the wall, " +
        "2 bottles of beer. \n" +
        "Take one down and pass it around, " +
        "1 bottle of beer on the wall. \n"
      )
    end

    it 'returns verse 1' do
      expect(bottles.verse(1)).to eq(
        "1 bottle of beer on the wall, " +
        "1 bottle of beer. \n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall. \n"
      )
    end

    it 'returns verse 0' do
      expect(bottles.verse(0)).to eq(
        "No more bottles of beer on the wall, " +
        "no more bottles of beer. \n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall. \n"
      )
    end
  end
end