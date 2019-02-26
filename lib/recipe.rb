class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] = amount
  end

  def amount_required(ingredient)
    @ingredients_required[ingredient]
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    cal = ingredients.map do |ingredient|
        ingredient.calories
        end
    cal.zip(@ingredients_required.values).map do |calories, count|
       calories * count
     end.sum
  end
  


end
