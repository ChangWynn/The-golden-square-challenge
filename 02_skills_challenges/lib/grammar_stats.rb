class GrammarStats
  def initialize
    @sentence = ""
  end

  def check(text) # text is a string
    @sentence = text
    return false if @sentence == ""

    is_valid = @sentence[0].match?(/[A-Z]/) && @sentence[-1].match?(/[\.\!\?]/)
    return is_valid ? true : false
  end

  def percentage_good
    return 100 if check(@sentence)
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end

# sentence = GrammarStats.new

# p sentence.check("H")