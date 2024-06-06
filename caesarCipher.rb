ABCD = "abcdefghijklmnopqrstuvwxyz".split("")

def find_in_ABCD(string)
  ABCD.each_with_index { |val, index| if val == string.downcase then return index end }
end

def caesar_cipher(string, number)
  text = string.strip.split("")

  final_text = text.map do |n|
    if ABCD.include?(n.downcase)
      num_index = find_in_ABCD(n)
      val_index = num_index + number > ABCD.length ? ABCD[(num_index + number) - ABCD.length] : ABCD[num_index + number]
      n == n.upcase ? val_index.upcase : val_index
    else
      n
    end
  end
  return final_text.join("")
end
