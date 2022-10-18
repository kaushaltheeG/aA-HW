=begin
Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n).
  sum_to(5)  # => returns 15
  sum_to(1)  # => returns 1
  sum_to(9)  # => returns 45
  sum_to(-8)  # => returns nil

=end

def sum_to(n)
    return nil if n.negative?
    return 1 if n == 1
    n + sum_to(n-1)
end

# p sum_to(5)
# p sum_to(1)
# p sum_to(9)
# p sum_to(-8)


=begin
    Write a function add_numbers(nums_array) that takes in an array of Integers and returns the sum of those numbers.
Write this method recursively.
  # Test Cases
  add_numbers([1,2,3,4]) # => returns 10
  add_numbers([3]) # => returns 3
  add_numbers([-80,34,7]) # => returns -39
  add_numbers([]) # => returns nil
=end

def add_numbers(nums_array, sum=0)
    
    return sum if nums_array.empty? #|| nums_array == nil
    sum = nums_array.shift +  add_numbers(nums_array, sum)
    
    #sum
end

        # p add_numbers([1,2,3,4])
        # p add_numbers([3]) 
        # p add_numbers([-80,34,7])
#p add_numbers([]) # => returns nil


=begin
Let's write a method that will solve Gamma Function recursively. 
The Gamma Function is defined Γ(n) = (n-1)!.

    gamma_fnc(0)  # => returns nil
    gamma_fnc(1)  # => returns 1
    gamma_fnc(4)  # => returns 6
    gamma_fnc(8)  # => returns 5040
=end

def gamma_fnc(n)
    return 1 if n == 1
    return nil if n.zero?
    n = n - 1
    n * gamma_fnc(n)
end

#  p gamma_fnc(0)  # => returns nil
#     p gamma_fnc(1)  # => returns 1
#     p gamma_fnc(4)  # => returns 6
#    p gamma_fnc(8)  # => returns 5040

=begin
    Write a function ice_cream_shop(flavors, favorite) that takes in an array of ice cream flavors available at the ice cream shop, as well as the user's favorite ice cream flavor. 
    Recursively find out whether or not the shop offers their favorite flavor.

    ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
    ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
    ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
    ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
    ice_cream_shop([], 'honey lavender')  # => returns false
=end
def ice_cream_shop(flavors,favorite)
    return false if flavors.empty?
    return true if flavors[0] == favorite
    ice_cream_shop(flavors[1..-1],favorite)
    
end
    # p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')
    # p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
    # p  ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
    #  p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
    # p  ice_cream_shop([], 'honey lavender')  # => returns false



=begin
    Write a function reverse(string) that takes in a string and returns it reversed.

    reverse("house") # => "esuoh"
    reverse("dog") # => "god"
    reverse("atom") # => "mota"
    reverse("q") # => "q"
    reverse("id") # => "di"
    reverse("") # => ""
=end

def reverse(str)
    return "" if str == ""
    str[-1] + reverse(str[0...-1])
end
    p reverse("house") # => "esuoh"
   p reverse("dog") # => "god"
   p reverse("atom") # => "mota"
   p reverse("q") # => "q"
  p  reverse("id") # => "di"
  p  reverse("") # => ""