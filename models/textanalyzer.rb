#your text analyzer model code will go here.
class TextAnalyzer

  attr_accessor :text

  def initialize(text)
    @text = text
  end
  def count_of_words
    words = @text.split(" ")
    words.count
  end

  def count_of_vowels
    @text.downcase.scan(/[aeiou]/).count
  end

  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    sl= @text.downcase.gsub(/[^a-z]/, '')
    arr = sl.split('')
    arr1 = arr.uniq
    arr2 = {}
    arr1.map do |c|
      arr2[c] = arr.count(c)
    end
    biggest = {
      :most_used_letter => arr2.keys.first,
      :letter_count => arr2.values.first
    }
    arr2.each do |key, value|
      if value > biggest.values[1]
        biggest = {
          :most_used_letter => "",
          :letter_count => ""
        }
        biggest[:most_used_letter] = key
        biggest[:letter_count] = value
      end
      #binding.pry
    end
    biggest
  end
end
