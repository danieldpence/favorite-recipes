require "rails_helper"

RSpec.describe "Login", type: :system, js: true do
  let(:user) { create(:user) }

  it "enables me to create widgets" do
    visit new_user_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_link_or_button "Login"

    expect(page).to have_text("Recipes")
  end
end