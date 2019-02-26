class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(item)
    @stock[item]
  end

  def restock(item, amount)
    @stock[item] += amount
  end

  def enough_ingredients_for?(recipe)
    @stock.any? do |ingredient|
      ingredient[1] >= recipe.amount_required(ingredient[0])
    end
  end
end
