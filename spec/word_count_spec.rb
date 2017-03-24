require ('rspec')
require ('word_count')

describe('String#word_count_exact') do

  it('identifies that a word appears in a string') do
    expect("hello ken goodbye".word_count_exact("hello")).to(eq(1))
  end

  it('returns how freqently a word appears in a string') do
    expect("hello ken hello goodbye".word_count_exact("hello")).to(eq(2))
  end

  it('returns how freqently a word appears in a string') do
    expect("hello hello goodbye hello hello".word_count_exact("hello")).to(eq(4))
  end

  it('returns how freqently a word appears in a string accounting for punctuation') do
    expect("hello hello hellogoodbye hello hello!".word_count_exact("hello")).to(eq(4))
  end

end

describe('String#word_count_partial') do

  it('returns how freqently a word appears in a string accounting for punctuation') do
    expect("hello hello hellogoodbye hello hello!".word_count_partial("hello")).to(eq(5))
  end

  it('identifies that a word appears in a string') do
    expect("hello hello goodbye".word_count_partial("hello")).to(eq(2))
  end

  it('returns how freqently a word appears in a string') do
    expect("hello hello goodbye".word_count_partial("hello")).to(eq(2))
  end

  it('returns how freqently a word appears in a string') do
    expect("hello hello goodbye hello hello".word_count_partial("hello")).to(eq(4))
  end

  it('returns how freqently a word appears in a string accounting for punctuation') do
    expect("hello hello goodbye hello hello!".word_count_partial("hello")).to(eq(4))
  end

end
