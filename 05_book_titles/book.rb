class Book
# write your code here
  attr_accessor :title, :little_words

  def initialize
    @little_words = ['a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'or', 'nor', 'over']

  def title=(t)
    words = t.split(' ')
    words.length.times do |i|
      w = words[i]
      unless @little_words.include? w
        words[i] = w.capitalize
      end
    end
    words[0].capitalize!
    @title = words.reduce(''){|t, w| t + w + ' '}[0..-2]
  end
end
end
