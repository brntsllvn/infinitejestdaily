require 'rails_helper'

RSpec.describe "quotes/edit", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!(
      :quote => "MyText",
      :identification_count => 1
    ))
  end

  it "renders the edit quote form" do
    render

    assert_select "form[action=?][method=?]", quote_path(@quote), "post" do

      assert_select "textarea#quote_quote[name=?]", "quote[quote]"

      assert_select "input#quote_identification_count[name=?]", "quote[identification_count]"
    end
  end
end
