puts "Text for encrypt please: "
text_for_encrypt = gets.chomp

puts "Input encrypt key: "
key = gets.chomp.to_i

text_arrow = text_for_encrypt.split('').to_a
alphabet_az = ("a".."z").to_a.join
alphabet_AZ = ("A".."Z").to_a.join
i = key % alphabet_az.size


encrypt_az = alphabet_az.chars.rotate(i).join
encrypt_AZ = alphabet_AZ.chars.rotate(i).join

res = []
text_arrow.each do |letter|
  if ("a".."z") === letter
    letter = letter.tr( alphabet_az, encrypt_az )
    res << letter
  else
    letter = letter.tr( alphabet_AZ, encrypt_AZ )
    res << letter
  end
end

puts "Your code: #{res.join}"
