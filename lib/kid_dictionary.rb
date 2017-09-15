require('pry')

class Word
  @@dictionary = []
  attr_accessor(:entry, :definition)
  attr_reader(:id)
  def initialize
    @name = name
    @id = @@dictionary.length + 1
    @definition = definition
  end

  def self.all
    @@dictionary
  end

  # def save
  #   @@dictionary.push(self)
  # end
  #
  # def self.clear
  #   @@dictionary = []
  # end
  #
end
