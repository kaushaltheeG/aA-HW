class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1, @name2 = name1, name2 
    @cups = place_stones
    
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    arr = Array.new(14) {Array.new}
    (0..5).each do |i|
      4.times {arr[i] << :stone}
    end 
    (7..12).each do |i|
      4.times {arr[i] << :stone}
    end 
    arr
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 14
    raise "That is your basket" if start_pos == 6 || start_pos == 13
    raise "Starting cup is empty" if @cups[start_pos].empty?
    true 
  end

  def make_move(start_pos, current_player_name)
    
    current_position = @cups[start_pos]
    
    current_idx = start_pos
    emptied_start = false 
    pointer_end = current_position.length

    until current_position.nil?

      if !emptied_start
        @cups[current_idx] = []
        emptied_start = true 
      end 

      # (current_idx+1..pointer_end).each do |i| 
      #   p @cups[i]
      #    p "-----"
      #    p i
      #   #p @cups[i].is_a?(Array)
      #     @cups[i] << :stone 
      #     current_idx = i if i == pointer_end
      # end 

      idx_hash = {"14": 0, '15': 1, '16': 2}
      #p idx_hash.is_a?(Hash)
      queue = (current_idx+1..pointer_end).to_a#.map {|ele| ele -= 2 if ele > 13}
      #(0...queue.length).each {|i| queue[i] = idx_hash[i] if i > 13}
      i = 0
      while i < queue.length
        if queue[i] == 14
          queue[i] = 0
        elsif queue[i] == 15
          queue[i] = 1
        elsif queue[i] == 16
          queue[i] = 2
        end 
        
        i += 1
      end 
     
      #p pointer_end
      until queue.empty?
        pointer_end = queue[0] if queue.length == 1
        i = queue.shift
        p queue
        @cups[i] << :stone 
      end 
      p pointer_end
      current_idx, pointer_end = pointer_end , current_idx
      #p pointer_end

      #if landing on palyers basket 
      if (current_idx == 6 || current_idx == 13 ) || current_position[current_idx] == 0
        current_position = nil 
      else
        p current_idx
        current_position = @cups[current_idx] 
        #p current_position
        pointer_end += current_position.length
      end 

      
      

    end 

    
  end




  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end


