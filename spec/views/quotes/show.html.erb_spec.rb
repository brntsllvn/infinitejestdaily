require 'rails_helper'

RSpec.describe "quotes/show", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!(
      :quote => "MyText",
      :identification_count => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
