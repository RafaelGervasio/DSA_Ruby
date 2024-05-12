class Queue
	attr_accessor :queue

	def initialize
		@queue = []
	end

	def enqueue(elem)
		queue.unshift(elem)
	end

	def dequeue()
		queue.pop()
	end

	def get_front()
		queue[-1]
	end

	def len
		queue.length()
	end

	def is_empty?
		return true if self.len() == 0
		return false
	end
end

# q = Queue.new()

# q.enqueue(6)
# print(q.get_front)

# q.enqueue(5)
# print(q.get_front)

# q.dequeue()
# print(q.get_front())

# print(q.is_empty?)

# q.dequeue()

# print(q.is_empty?)

# q.enqueue("hey there")
# q.enqueue("hey there")
# q.enqueue("hey there")
# q.enqueue("hey there")
# q.enqueue("hey there")

# print(q.len())

