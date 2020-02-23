require 'pry'

class String

  # helper method for below methods
  def sentence_type?(punctuation)
    if self[-1] == punctuation
      return true 
    else 
      return false 
    end 
  end 

  def sentence?
    sentence_type?(".")
  end

  def question?
    sentence_type?("?")
  end

  def exclamation?
    sentence_type?("!")
  end

  def count_sentences
    self.split(/[?!.] /).count
  end
end