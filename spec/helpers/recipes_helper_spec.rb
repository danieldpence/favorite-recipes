require 'rails_helper'

RSpec.describe RecipesHelper, type: :helper do
  describe ".ingredient_list_for(recipe)" do
    let(:recipe) { create(:recipe) }
    
    context "with ingredients present" do
      before do
        2.times do
          recipe.ingredients.create(attributes_for(:ingredient))
        end
      end

      it "returns a comma-separated list of ingredient names" do
        expect(helper.ingredient_list_for(recipe)).to eq("name, name")
      end
    end

    context "when no ingedients present" do
      it "returns an emtpy string if no ingredients present" do
        expect(helper.ingredient_list_for(recipe)).to eq("")
      end
    end
  end
end
