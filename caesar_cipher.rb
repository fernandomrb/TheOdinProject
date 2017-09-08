def caesar_cipher(str, shift)
  new_str = ""
  str.each_char do |char|
    char = char.ord
    if (65..90) === char
      char = 65 + (char + shift - 65) % 26
    elsif (97..122) === char
      char = 97 + (char + shift - 97) % 26
    end
    new_str << char.chr
  end
  new_str
end

puts caesar_cipher("What a string!", 5)
