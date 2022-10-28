=begin
['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
=> "fiiiissshhhhhh"
=end 

=begin 
Sluggish Octopus
Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths
=end 
fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
def sluggish_octopus(arr)
    longest = ''
    arr.each.with_index do |fish_1, idx_1|
        arr.each.with_index do |fish_2, idx_2|
            if fish_1.length < fish_2.length
                longest = fish_2 if longest.length < fish_2.length
            end 
        end 
    end 
    longest
end 
#p sluggish_octopus(fishes)

=begin 
    Find the longest fish in O(n log n) time. Hint: 
    You saw a sorting algorithm that runs in O(n log n) in the sorting complexity demo from the Sorting Complexity reading. 
    Remember that Big O is classified by the dominant term.
=end 

def dominant_octopus(arr)
    #binary search
    arr.sort! {|a,b| a.length <=> b.length}
    mid_i = arr.length / 2
    return arr[mid_i] if arr.length == 1
    dominant_octopus(arr[mid_i..-1])
end 
#p dominant_octopus(fishes)

=begin 
Clever Octopus
Find the longest fish in O(n) time. 
The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.
=end

def clever_octopus(arr)
    longest = arr[0]
    arr[1..-1].each do |fish|
        longest = fish if longest.length < fish.length 
    end 
    longest
end 
# p clever_octopus(fishes)