#write your code here
def translate(sentence)
  new_sentence = ''
  vowels = ['a', 'e', 'i', 'o', 'u']
  words = sentence.split(' ')

  words.length.times do |i|
    original = words[i]

    if vowels.include? original[0]
      new_sentence += original + 'ay '
    else
      #move consonant to back until beginning with vowel, then add 'ay'
      while (vowels.include? original[0]) == false
        original = original[1..-1] + original[0]
      end
      #exception for words with qu
      if original[0] == 'u' and original[-1] == 'q'
        original = original[1..-1] + original[0]
      end
      new_sentence += original + 'ay '
    end
  end
  new_sentence[0..-2]
end
