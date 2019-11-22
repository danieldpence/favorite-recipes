require 'rails_helper'

RSpec.describe "recipes/edit", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :name => "MyString",
      :description => "MyText",
      :instructions => "MyText",
      :time_to_prepare => "MyString",
      :feeds => "MyString"
    ))
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do

      assert_select "input[name=?]", "recipe[name]"

      assert_select "textarea[name=?]", "recipe[description]"

      assert_select "textarea[name=?]", "recipe[instructions]"

      assert_select "input[name=?]", "recipe[time_to_prepare]"

      assert_select "input[name=?]", "recipe[feeds]"
    end
  end
end
