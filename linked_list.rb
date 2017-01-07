# define Node class

def class Node
	attr_accessor :value, :next

	def initialize(value)
		@value = value
		@next = nil
	end
end

def class LinkedList

	def initialize
		@head = nil
		@tail = nil
	end

	# add node at the end of the list

	def append(data)
		data = Node.new(data)
		if @head.nil?
			@head = data
		  	@tail = data
		else
		  	@tail.next = data
		  	@tail = data
		end
	end

	# add node at the beginning of the list
	def prepend(data)
		data = Node.new(data)
		if @head.nil?
			@head = data
			@tail = data
		else
			data.next = @head
			@head = data
		end
	end

	# return list size
	def size
		count = 1
		node = @head
		until node.next.nil?
			count += 1
			node = node.next
		end
		count
	end

	# return first node in list
	def head
		@head
	end

	# return last node in list
	def tail
		@tail
	end

	def at(index)
		size = self.size
		if index > size || index < 0
			puts "Oh No! That index is outside the boudaries of the list!"
			return nil
		end
		count = 1 
		node = @head
		until count == index
			count += 1
			node = node.next
		end
		node
	end

	# delete last node from list
	def pop
		if @head.nil?
			puts "The list is empty, can't delete that item"
			return nil
		elsif @head == @tail
			node = @head
			@head = nil
			@tail = nil
		elsif @head.next == @tail
			node = @head
			node.next = nil
			@tail = @head
		else
			node = @head
			until node.next.next.nil?
				node = node.next
			end
			node.next = nil
			@tail = node
		end
	end

	# determines if list contains data or not
	def contains?(data)
		if @head.nil?
			puts "Empty list!"
			return false
		elsif @head == @tail
			node = @head
			if node.value != data
				return false
			end
		else
			node = @head
			until node.value == data
				node = node.next
				if node == @tail && node.value != data
					return false
				end
			end
			return true
		end
	end

	# returns index of node with data, or nil
	def find(data)
		if @head.nil?
			puts "Empty list!"
			return false
		elsif @head.value == data
			return 1
		else
			index = 1
			node = @head
			until node.next.nil?
				node = node.next
				index += 1
				if node.value == data
					return index
				end
			end
			puts "Couldn't locate that value"
			return nil
		end
	end

	# represent objects in linked list as strings
	def to_s
		node = @head
		string = "( #{node.value} ) -> "
		until node.next.nil?
			node = node.next
			string = string + "( #{nod.value} ) -> "
			if node.next.nil?
				string = string + "nil"
			end
		end
		string
	end

	# insert at a given index
	def insert_at(data, index)
		size = self.size
		if index == 1
			self.prepend(data)
			return nil
		elsif index == size + 1
			self.append(data)
			return nil
		elsif index > size || index < 0
			puts "Oh No! Index outside list boundaries"
			return nil
		else
			node = @head
			count = 1
			until count == index
				if count < index
					prev = node
				end
				node = node.next
				count += 1
			end
			new_node = Node.new(data)
			new_node.next = node
			prev.next = new_node
		end
	end

	# remove node at given index
	def remove_at(index)
		size = self.size
		if index > size || index < 0
			puts "Oh No! Index outside list boundaries"
			return nil
		elsif index == size
			self.pop
			return nil
		elsif index == 1
			node = @head
			prev = node
			node = node.next
			prev.next = nil
			@head = node
			return nil
		else
			node = @head
			count = 1
			until count == index
				if count < index
					prev = node
				end
				node = node.next
				count += 1
			end
			prev.next = node.next
			node.next = node
		end
	end
end


				


