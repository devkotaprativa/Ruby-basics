class Encryptor
  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}
  end
  
  def encrypt_letter(letter)
  lowercase_letter = letter.downcase
  cipher[lowercase_letter]
	end
	
	def encrypt(string)
		letters = string.split("")
  	results = letters.collect do |i|
  		encrypt_letter(i)
  	end
		results.join
	end
end

class Decryptor < Encryptor
	def decrypt_letter(letter)
  lowercase_letter = letter.downcase
  cipher[lowercase_letter]
	end

	def decrypt(string)
		letters = string.split("")
  	results = letters.collect do |i|
  		decrypt_letter(i)
  		
  	end
		results.join
	end
end

e = Encryptor.new
puts "Enter the word to be encrypted"
data = gets.chomp
puts e.encrypt(data)

d = Decryptor.new
puts "Enter the word to be decrypted"
data = gets.chomp
puts d.decrypt(data)