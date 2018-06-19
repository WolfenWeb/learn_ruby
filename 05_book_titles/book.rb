# Book Class from Odin Project
class Book
  attr_reader :title
  def initialize() end

  def title=(param1)
    conjuctions = %w[and or a an in the of]
    @title = param1.split.map.with_index do |word, index|
      if index.zero? || !conjuctions.include?(word)
        word.capitalize
      else
        word
      end
    end.join(' ')
  end
end
