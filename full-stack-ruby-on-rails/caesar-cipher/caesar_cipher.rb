def caesar_cipher(str, shift_factor)
  alphabet = Array("a".."z")
  lower_case = Hash[alphabet.zip(alphabet.rotate(shift_factor))]

  alphabet = Array("A".."Z")
  upper_case = Hash[alphabet.zip(alphabet.rotate(shift_factor))]

  encrypter = lower_case.merge(upper_case)
  
  str.chars.map { |c| encrypter.fetch(c, " ") }.join
end