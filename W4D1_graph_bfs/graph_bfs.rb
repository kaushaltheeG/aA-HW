class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value 
        @neighbors = []
    end 

    def self.bfs(starting_node,target)
        queue = [starting_node]

        until queue.empty?
            node = queue.shift
            if node.value == target 
                return node  
            end 
            queue = node.neighbors
        end 
        nil 
    end 

     
end 

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p GraphNode.bfs(a,"b")
p GraphNode.bfs(a,"f") #nil, with out set 
#p a.bfs(a,"b")

# p a 
# p e
# p c
# p f 