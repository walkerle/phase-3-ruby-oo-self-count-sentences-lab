require 'pry'

class String

  def sentence?
    self.end_with? "."
  end

  # puts "Yes.".sentence?

  def question?
    self.end_with? "?"
  end

  def exclamation?
    self.end_with? "!"
  end

  def count_sentences
    self.split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }.count
  end

  puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences

  # puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(/\.|\?|\!/)

  # puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }

  # puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }.size

end