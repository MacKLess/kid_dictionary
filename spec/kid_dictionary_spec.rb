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
    it ("will have a readable dictionary list") do
      expect(Word.all).to(be_a(Array))
    end
  end
end
