module RecipesHelper
  def ingredient_list_for(recipe)
    recipe.ingredients.all.map { |i| i.name }.join(", ")
  end
end
