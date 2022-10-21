class Map
    attr_reader :map
    def initialize
        @map = []
    end 

    def set(key,val)
        @map << [key,val]
    end

    def get(key)
        @map.each do |pair|
            return pair[1] if pair[0] == key
        end
        nil
    end
    
    def delete(key)
        @map.each do |pair|
            return @map -= [pair] if pair[0] == key
        end
        nil
    end

    def show
        p @map
    end 
end

m = Map.new 
m.set(8,9)
m.set(10,12)
m.set(11,0)
m.show #[[8, 9], [10, 12], [11, 0]]
m.delete(10)
m.show #[[8, 9], [11, 0]]
m.set('k','zxz')
p m.get(8) #9
m.set('zxz','k')
m.set('zxz', 'c')
m.show #[[8, 9], [11, 0], ["k", "zxz"], ["zxz", "k"], ["zxz", "c"]]
p m.get('k') #"zxz"
m.set(89,33)
m.show  #[[8, 9], [11, 0], ["k", "zxz"], ["zxz", "k"], ["zxz", "c"], [89, 33]]

