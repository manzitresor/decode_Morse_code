MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(str)
  MORSE_CODE[str]
end

def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

def decode_message(message)
  word = message.split('   ')
  sentence = word.map { |morse| decode_word(morse) }
  sentence.join(' ')
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
