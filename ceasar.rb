def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char =~ /[A-Za-z]/
      base = char.upcase == char ? 65 : 97
      offset = (char.ord - base + shift) % 26
      (base + offset).chr
    else
      char
    end
  end.join
end

puts caesar_cipher("What a string!", 5)

