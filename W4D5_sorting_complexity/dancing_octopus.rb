=begin 
Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:
    tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up" ]
To play the game, the octopus must step on a tile with her corresponding tentacle. 
We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.
=end 

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

=begin
Slow Dance
Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. 
This should take O(n) time.
slow_dance("up", tiles_array)
> 0
slow_dance("right-down", tiles_array)
> 3
=end 

def slow_dance(target,arr)
    arr.each.with_index {|tile,i| return i if tile == target}
end 

# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)

=begin 
    Constant Dance!
Now that the octopus is warmed up, let's help her dance faster. 
Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.
=end 

hash_tiles = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" =>3, "down"=>4, "left-down"=>5, "left"=>6,  "left-up"=>7}
def constant_dance(target,hash)
    hash[target]
end 

p constant_dance("up", hash_tiles)
p constant_dance("right-down",hash_tiles)
