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
		# 1. Cut the input string into letters
		letters = string.split("")
  	
  	# 2. Encrypt those letters one at a time, gathering the results
  	#  results = []
  	# letters.each do |i|
   #  encrypted_letter = encrypt_letter(i)
   #  results.push(encrypted_letter)
  	# end
  	results = letters.collect do |i|
  		encrypt_letter(i)
  		
  	end

		# 3. Join the results back together in one string
		results.join

	end


end
e = Encryptor.new
puts e.encrypt("hello")