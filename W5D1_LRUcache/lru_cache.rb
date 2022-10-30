  class LRUCache
    def initialize(n)
        @cache = []
        @size = n
    end

    def count
      # returns number of elements currently in cache
      @cache.length 
    end

    def add(el)
      # adds element to cache according to LRU principle
        if count >= @size 
            if @cache.include?(el) #prevent duplicates from being stored; readjusting the order is el is added again to the cache
                @cache -= [el]
                @cache.push(el)
                return count
            end 
            @cache.shift #remove the least recently used item which is the first one pushed in 
            @cache.push(el)
            return count
        end 
        @cache.push(el)
        count
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache
    end

    private
    attr_reader :cache, :size
    # helper methods go here!
  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show