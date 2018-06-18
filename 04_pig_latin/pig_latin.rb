def first_vowel(param1)
  vowels = %w[a e i o u]
  index = 0
  param1.each_char do |char|
    if vowels.include?(char)
      index = param1.index(char)
      index += 1 if char == 'u'
      return index
    end
  end
end

def translate_word(param1)
  index = first_vowel(param1)
  param1[index...param1.length] << param1[0...index] << 'ay'
end

def translate(param1)
  param1.split.map do |i|
    i = translate_word(i)
  end.join(' ')
end

puts translate('apple')
puts translate('banana')
puts translate('cherry')
puts translate('eat pie')
puts translate('three')
puts translate('school')
puts translate('quiet')
puts translate('square')
puts translate('the quick brown fox')
