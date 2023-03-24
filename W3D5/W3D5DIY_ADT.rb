class Stack
    def initialize(stack)
        @stack = stack
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
        @stack
    end

    def peek
        @stack[-1]
    end
end

# test_stack = Stack.new([1, 2, 3])

# p test_stack.push(4)
# p test_stack.pop
# p test_stack.peek

class Queue
    def initialize(queue)
        @queue = queue
    end

    def enqueue(el)
        @queue.unshift(el)
        @queue
    end

    def dequeue
        @queue.shift
        @queue
    end

    def peek
        @queue[-1]
    end
end

class Map
    def initialize(array)
        @array = array
        self = []
    end

    def set(key, value)
        self << [key, value] 
        self
    end

    def get(key)
        self.each do |keyvalue|
            return keyvalue[0] if keyvalue[0] == key
        end
        nil
    end

    def delete(key)
        self.select! do |keyvalue|
            !keyvalue[0] == key
        end
        self
    end

    def show
        p self
    end
end
