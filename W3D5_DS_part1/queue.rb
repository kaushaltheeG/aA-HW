class Queue
    attr_reader :queue
    def initialize
        @queue = []
    end 

    def enqueue(el)
        @queue << el 
    end 

    def dequeue
        @queue.shift
    end 

    def peek 
        p @queue.first
    end 
    
end

q = Queue.new
q.enqueue(1)
q.enqueue(5)
q.enqueue(10)
q.peek # 1
p q.queue #[1,5,10]
q.dequeue
q.enqueue(8)
q.peek # 5
p q.queue #[5,10,8]