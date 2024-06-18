ABCD = ('a'..'z').to_a

def find_in_abcd(char)
  ABCD.index(char.downcase)
end

def caesar_cipher(string, number)
  shifted_text = string.chars.map do |char|
    if ABCD.include?(char.downcase)
      original_index = find_in_abcd(char)
      new_index = (original_index + number) % ABCD.length
      char == char.upcase ? ABCD[new_index].upcase : ABCD[new_index]
    else
      char
    end
  end
  shifted_text.join
end
