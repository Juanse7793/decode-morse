def decode_char(char)
  code = { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.',
           G: '--.', H: '....', I: '..', J: '.---', K: '-.-', L: '.-..',
           M: '--', N: '-.', O: '---', P: '.--.', Q: '--.-', R: '.-.',
           S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-',
           Y: '-.--', Z: '--..' }
  @result = ''
  code.each do |key, value|
    if (value === char)
      @result = key.to_s
    end
  end
  return @result
end
