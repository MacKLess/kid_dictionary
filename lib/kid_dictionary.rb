require('pry')

class Word
  @@dictionary = {}
  attr_accessor(:entry, :definition)
  def initialize (entry)
    @entry = entry
    @definition = []
  end

  def self.clear
    @@dictionary = {}
  end

  def self.all
    @@dictionary.keys.sort
  end

  def save
    @@dictionary[self.entry] = self
  end




end
