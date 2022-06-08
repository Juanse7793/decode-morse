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
