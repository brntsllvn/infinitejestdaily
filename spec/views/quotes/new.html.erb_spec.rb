require 'rails_helper'

RSpec.describe "quotes/new", type: :view do
  before(:each) do
    assign(:quote, Quote.new(
      :quote => "MyText",
      :identification_count => 1
    ))
  end

  it "renders new quote form" do
    render

    assert_select "form[action=?][method=?]", quotes_path, "post" do

      assert_select "textarea#quote_quote[name=?]", "quote[quote]"

      assert_select "input#quote_identification_count[name=?]", "quote[identification_count]"
    end
  end
end
