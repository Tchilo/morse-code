def decode_morse(alphabate)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse[alphabate]
end

def decode_word(alphabate)
  word = alphabate.split
  decode_word = ''
  word.each do |letter|
    decode_word += decode_morse(letter)
  end
  decode_word
end

def decode(str)
  sentence_split = str.split('   ')
  full_sentence_decoded = ' '
  sentence_split.each do |word|
    full_sentence_decoded += decode_word(word) + ' '.to_s
  end
  full_sentence_decoded.strip
end

# test cases

puts decode('.-')

puts decode('-- -.--')

puts decode('-- -.-- -. .- -- .')

# bottole message
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
