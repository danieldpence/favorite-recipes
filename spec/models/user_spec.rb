require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Before save" do
    context "with valid attributes" do
      let(:user) { build(:user) }
      
      it "is valid" do
        expect(user).to be_valid
      end
    end

    context "with invalid email" do
      let(:user) { build(:user, email: nil) }
      
      it "is invalid" do
        expect(user).to be_invalid
      end
    end

    context "with duplicate email" do
      let!(:user) { create(:user) }
      let(:user_2) { build(:user) }
      
      it "is invalid" do
        expect(user_2).to be_invalid
      end
    end
    
    context "with invalid name" do
      let(:user) { build(:user, name: nil) }
      
      it "is invalid" do
        expect(user).to be_invalid
      end
    end
  end
end
