class HashMap
	@my_array = []

	def hash(key)
		hash_code = 0
   		prime_number = 31
      
   		key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

   		return hash_code
	end

	def set(key, value)
		hash_code = self.hash(key)
		@my_array[hash_code] = value

		# you still need to solve collisions
	end

	def get(key)
		hash_code = self.hash(key)
	end
end