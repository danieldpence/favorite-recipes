require "rails_helper"

RSpec.describe "Login", type: :system, js: true do
  let(:user) { create(:user) }

  context "using the correct credentials" do
    it "logs me in" do
      visit new_user_session_path
      
      expect(page).to have_text("Please Sign In")
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on("Log in")
  
      expect(page).to have_text("Logout")
    end
  end

  context "using incorrect credentials" do
    it "displays error messages" do
      visit new_user_session_path
  
      fill_in "Email", with: "bogus@example.com"
      fill_in "Password", with: "bogus"
      click_on("Log in")
  
      expect(page).to have_text("Invalid Email or password.")
    end
  end
end