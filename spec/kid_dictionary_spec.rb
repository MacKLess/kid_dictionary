require('rspec')
require('kid_dictionary')

describe('Word') do
  before() do
    Word.clear()
  end

  let(:new_word) { Word.new("mordant") }
  describe('#entry') do
    it ("will have a readable entry") do
      expect(new_word.entry).to(eq("mordant"))
    end
  end

  describe('.dictionary') do
    it ("will display a readable dictionary list by entries") do
      expect(Word.all).to(be_a(Array))
    end
  end

  describe('#save') do
    it("will save an entry to the dictionary") do
      new_word.save
      expect(Word.all).to(eq(["mordant"]))
    end
  end

  describe('.clear') do
    it("will clear all entries from the Word") do
      new_word.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end

  describe('#sort') do
    it("will return dictionary entries in alphabetical order") do
      Word.new("chuckles").save
      Word.new("repugnant").save
      Word.new("accordant").save
      Word.new("dentitious").save
      expect(Word.all).to(eq(["accordant", "chuckles", "dentitious", "repugnant"]))
    end
  end



end
