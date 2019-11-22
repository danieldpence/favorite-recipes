require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :name => "Name",
        :description => "MyText",
        :instructions => "MyText",
        :time_to_prepare => "Time To Prepare",
        :feeds => "Feeds"
      ),
      Recipe.create!(
        :name => "Name",
        :description => "MyText",
        :instructions => "MyText",
        :time_to_prepare => "Time To Prepare",
        :feeds => "Feeds"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Time To Prepare".to_s, :count => 2
    assert_select "tr>td", :text => "Feeds".to_s, :count => 2
  end
end
