class Stack
	attr_accessor :stack

	def initialize
		@stack = []
	end

	def push(elem)
		stack.push(elem)
	end

	def pop
		stack.pop()
	end

	def get_top
		stack[-1]
	end

	def len
		stack.length()
	end

	def is_empty?
		return true if self.len() == 0
		return false
	end
end


# s = Stack.new()

# s.push(6)
# print(s.get_top)

# s.push(5)
# print(s.get_top)

# s.pop()
# print(s.get_top())

# print(s.is_empty?)

# s.pop()

# print(s.is_empty?)

# s.push("hey there")
# s.push("hey there")
# s.push("hey there")
# s.push("hey there")
# s.push("hey there")

# print(s.len())

