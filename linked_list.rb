class LinkedList


	attr_accessor :head, :tail


	def initialize 
		@head = nil
		@tail = nil
	end
	

	def each
		current_node = self.head

		while (current_node != nil)
			yield current_node
			current_node = current_node.next_node
		end
	end


	def append(value)
		new_node = Node.new(value)

		if (self.size == 0)
			self.head = new_node
			self.tail = new_node
		else
			self.tail.next_node = new_node
			self.tail = new_node
		end
	end


	def prepend(value)
    	new_node = Node.new(value)
    	
    	if (self.size == 0)
    		self.head = new_node
    		self.tail = new_node
    	else
    		new_node.next_node = self.head
    		self.head = new_node
    	end
	end


	def size
		counter = 0
		self.each { |node| counter += 1}
		return counter
	end


	def at(i)
		self.each do |node|
			return node if i == 0
			i -= 1
		end
	end


	def pop
		return nil if (self.size == 0)
		
		if (self.size == 1)
			self.head = nil
			self.tail = nil
		else
			node_before_tail = self.at(self.size - 2)
			node_before_tail.next_node = nil
			self.tail = node_before_tail
		end
	end


	def contains?(value)
		self.each do |node|
			return true if node.value == value
		end

		return false
	end


	def find(value)
		i = 0
		self.each do |node|
			return i if node.value == value
			i += 1
		end

		return nil
	end


	def to_s
		self.each do |node|
			print"( #{node.value} ) -> "
		end

		print('nil')
	end
end




class Node
	attr_accessor :value, :next_node

	def initialize (value)
		@value = value
		@next_node = nil
	end
end



# TEST CODE

# test = LinkedList.new

# test.append('test1')
# test.append('test2')
# test.append('test3')

# p test.tail

# test.prepend('test4')

# p test.size

# puts test.contains?('test5')
# puts test.contains?('test3')

# p test.find('test2') 
# p test.find('test5')

# test.pop
# test.append('post-pop')
# test.prepend('prepend-test')
# test.append('append-test')

# puts test

# p test.at(5)
