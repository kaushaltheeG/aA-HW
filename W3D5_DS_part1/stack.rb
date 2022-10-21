  class Stack
    attr_reader :stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack << el
    end

    def pop
      @stack.pop
    end

    def peek
      p @stack.last
    end
  end

  stack = Stack.new
  stack.push(2)
  p stack.stack 
  stack.push(3)
  stack.push(4)
  stack.push(8)
  p stack.stack #should [2,3,4,8]
  stack.peek #should be 8 
  stack.pop 
  stack.push(10) 
  stack.peek #should 10
  stack.pop 
  stack.pop
  p stack.stack #[2,3]