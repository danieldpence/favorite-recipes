require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe "Before save" do
    context "with valid attributes" do
      let(:recipe) { build(:recipe) }
      
      it "is valid" do
        expect(recipe).to be_valid
      end
    end

    context "with invalid name" do
      let(:recipe) { build(:recipe, name: nil) }
      
      it "is invalid" do
        expect(recipe).to be_invalid
      end
    end
    
    context "with invalid instructions" do
      let(:recipe) { build(:recipe, instructions: nil) }
      
      it "is invalid" do
        expect(recipe).to be_invalid
      end
    end
  end
end
