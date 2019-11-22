require 'rails_helper'

RSpec.describe "recipes/show", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :name => "Name",
      :description => "MyText",
      :instructions => "MyText",
      :time_to_prepare => "Time To Prepare",
      :feeds => "Feeds"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Time To Prepare/)
    expect(rendered).to match(/Feeds/)
  end
end
