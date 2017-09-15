require('pry')

class Word
  @@dictionary = []
  attr_accessor(:entry, :definition)
  attr_reader(:id)
  def initialize (entry)
    @entry = entry
    @id = @@dictionary.length + 1
    @definition = definition
  end

  def self.clear
    @@dictionary = []
  end

  def self.all
    @@dictionary
  end
  #
  # def save
  #   @@dictionary.push(self)
  # end


end
