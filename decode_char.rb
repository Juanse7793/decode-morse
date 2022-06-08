def decode_char(char)
  code = { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.',
           G: '--.', H: '....', I: '..', J: '.---', K: '-.-', L: '.-..',
           M: '--', N: '-.', O: '---', P: '.--.', Q: '--.-', R: '.-.',
           S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-',
           Y: '-.--', Z: '--..' }
  @result = ''
  code.each do |key, value|
    @result = key.to_s if value == char
  end
  @result
end

def decode_word(word)
  first = word.split.reject do |char|
    char == ''
  end
  first.map do |char|
    decode_char(char)
  end
    .join
end

def decode(sentence)
  sentence
    .split('   ')
    .map do |word|
      decode_word(word)
    end
    .join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
