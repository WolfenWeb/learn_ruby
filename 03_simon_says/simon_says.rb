def echo (param1)
  param1
end

def shout(param1)
  param1.upcase
end 

def repeat(param1, param2 = 2)
  output = ''
  param2.times do
    output = output + param1 + ' '
  end
  output.strip
end

def start_of_word(param1, param2 = 1)
  param1[0...param2]
end

def first_word(param1)
  param1.split[0]
end

def titleize(param1)
  small_words = %w[and or the over]
  arr = param1.split
  arr.each_index do |i|
    if i.zero? || !small_words.include?(arr[i])
      arr[i] = arr[i].capitalize
    end
  end
  arr.join(' ')
end

puts titleize('the bridge over the river kwai')
