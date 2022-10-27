require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Kaushal") }
  subject(:cake) {Dessert.new("cake", 10, chef)}

  describe "#initialize" do
     it "sets a type" do 
      expect(cake.type).to eq("cake")
    end
    it "sets a quantity" do 
      expect(cake.quantity).to eq(10)
    end 
    # it "sets a chef's name" do 
    #   expect(dessert.chef).to eq("tom")
    # end 

    it "starts ingredients as an empty array" do 
      expect(cake.ingredients).to eq([])
    end 

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cake", "a lot", chef)}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(cake.ingredients << "eggs").to include("eggs")
    end 
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = ["coco", "eggs", "flour"]
      ingredients.each do |item|
        cake.ingredients << item
      end 

      expect(cake.ingredients).to eq(ingredients)
      cake.mix!
      expect(cake.ingredients).not_to eq(ingredients)
      expect(cake.ingredients.sort).to eq(ingredients.sort)
    end 
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      cake.eat(2)
      expect(cake.quantity).to eq(8)
    end 
    
    it "raises an error if the amount is greater than the quantity" do 
      expect {cake.eat(11)}.to raise_error('not enough left!')
    end 

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef).to receive(:titleize).and_return("Chef Kaushal the Great Baker")
      expect(cake.serve).to eq("Chef Kaushal the Great Baker has made 10 cakes!")
    end 
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cake)
      cake.make_more
    end
  end
end
