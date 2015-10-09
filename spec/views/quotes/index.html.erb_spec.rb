require 'rails_helper'

RSpec.describe "quotes/index", type: :view do
  before(:each) do
    assign(:quotes, [
      Quote.create!(
        :quote => "MyText",
        :identification_count => 1
      ),
      Quote.create!(
        :quote => "MyText",
        :identification_count => 1
      )
    ])
  end

  it "renders a list of quotes" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end