require ('pry')

class String

  define_method(:word_count_exact) do |word|
    word = word.downcase()
    sentence = self.downcase().split()
    count = 0
    sentence.length.times() do |i|
      new_word = sentence[i]
      if new_word.gsub(/[^0-9A-Za-z]/, '') == word
      count+=1
      end
    end
    count
  end

  define_method(:word_count_partial) do |word|
    word = word.downcase()
    sentence = self.downcase().split()
    count = 0
    sentence.length.times() do |i|
      new_word = sentence[i]
      if new_word.include?(word)
      count+=1
      end
    end
    count
  end

end
