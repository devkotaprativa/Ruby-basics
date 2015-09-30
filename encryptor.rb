class Encryptor
	attr_accessor:key, :char
	def initialize(value)
		@key = value
	end
  def cipher
    # {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
    #  'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
    #  'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
    #  'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
    #  'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
    #  'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
    #  'y' => 'l', 'z' => 'm'}
    # @key = 13
    @char = (' '..'z').to_a
    @rotated_char = @char.rotate(@key)
    @pair = @char.zip(@rotated_char)
    Hash[@pair] 

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

class Decryptor 
	attr_accessor:key, :char
	
	def initialize(value)
		@key = value
	end
	
	def dechipher
		# @key = 13
    @char = (' '..'z').to_a
    @rotated_char = @char.rotate(@key)
    @pair = @rotated_char.zip(@char) 
    Hash[@pair] 
	end

	def decrypt_letter(letter)
  	lowercase_letter = letter.downcase
  	dechipher[lowercase_letter]
	end

	def decrypt(string)
		letters = string.split("")
  	results = letters.collect do |i|
  		decrypt_letter(i)
  	end
		results.join
	end
end

e = Encryptor.new(13)
puts "Enter the word to be encrypted"
data = gets.chomp
puts e.encrypt(data)

d = Decryptor.new(13)
puts "Enter the word to be decrypted"
data = gets.chomp
puts d.decrypt(data)