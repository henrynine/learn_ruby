#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  ((word + ' ') * times)[0..-2]
end

def start_of_word(word, amount)
  word[0...amount]
end

def first_word(word)
  word.split(' ').first
end

def titleize(word)
  little_words = ['a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'or', 'nor', 'over']
  words = word.split(' ')
  words.length.times do |i|
    w = words[i]
    unless little_words.include? w
      words[i] = w.capitalize
    end
  end
  words[0].capitalize!
  words.reduce(''){|t, w| t + w + ' '}[0..-2]
end
