require ('pry')

class String

  define_method(:word_count_exact) do |word|
    sentence = self.downcase().split()
    count = 0
    sentence.length.times() do |i|
      if sentence[i].gsub(/[^0-9A-Za-z]/, '') == word
      count+=1
      end
    end
    count
  end

  define_method(:word_count_partial) do |word|
    sentence = self.downcase().split()
    count = 0
    sentence.length.times() do |i|
      if sentence[i].include?("hello")
      count+=1
      end
    end
    count
  end

end
