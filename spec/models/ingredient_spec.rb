require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe "Before save" do
    context "with valid attributes" do
      let(:ingredient) { build(:ingredient) }
      
      it "is valid" do
        expect(ingredient).to be_valid
      end
    end

    context "with invalid name" do
      let(:ingredient) { build(:ingredient, name: nil) }
      
      it "is invalid" do
        expect(ingredient).to be_invalid
      end
    end
    
    context "with invalid quantity" do
      let(:ingredient) { build(:ingredient, quantity: nil) }
      
      it "is invalid" do
        expect(ingredient).to be_invalid
      end
    end
  end
end

