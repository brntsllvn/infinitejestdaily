require 'rails_helper'

describe Quote do

  let(:q1) { Quote.create(quote: "Women’s slippers, centurions’ dusty sandals, dock-workers’ hobnailed boots, Popes’ slippers.

Wallace, David Foster (2009-04-03). Infinite Jest (p. 103). Little, Brown and Company. Kindle Edition. ") }

  let(:q2) { Quote.create(quote: "hands-full logistics of which are hard to envision, but realism wasn’t really the point image

Wallace, David Foster (2009-04-03). Infinite Jest (pp. 1031-1032). Little, Brown and Company. Kindle Edition. ") }

  let(:q3) { Quote.create(quote: "167. A couple of Incandenza’s more accessible early documentaries were bought by InterLace on a distribution-factored contingency basis, but except for a flat PBS-ish one on the lay principles of DT-annulation they never brought Meniscus/ Latrodectus more than a fraction of the interest on the interest from Himself’s rearview-mirror fortune. InterLace ended up optioning rights to only a couple of his higherbrow productions for its ‘Howls from the Margin’ low-volume-expectation product-line

Wallace, David Foster (2009-04-03). Infinite Jest (p. 1031). Little, Brown and Company. Kindle Edition. ") }

  let(:q4) { Quote.create(quote: "‘I’ve been asked to add that Hal here is seeded third, Boys’ 18-and-Under Singles, in the prestigious WhataBurger Southwest Junior Invitational out at the Randolph Tennis Center—’ says what I infer is Athletic Affairs, his cocked head showing a freckled scalp. ‘Out at

Wallace, David Foster (2009-04-03). Infinite Jest (p. 4). Little, Brown and Company. Kindle Edition." ) }


  describe '#page_number' do
    it 'returns page number' do
      expect(q1.page_number).to eq("103")
      expect(q2.page_number).to eq("1031")
      expect(q3.page_number).to eq("1031")
      expect(q4.page_number).to eq("4")
    end
  end

  describe '#clean_quote' do
    it 'returns clean quote' do
      expect(q1.clean_quote).to eq ("Women’s slippers, centurions’ dusty sandals, dock-workers’ hobnailed boots, Popes’ slippers.")
      expect(q2.clean_quote).to eq ("hands-full logistics of which are hard to envision, but realism wasn’t really the point image")
      expect(q3.clean_quote).to eq ("167. A couple of Incandenza’s more accessible early documentaries were bought by InterLace on a distribution-factored contingency basis, but except for a flat PBS-ish one on the lay principles of DT-annulation they never brought Meniscus/ Latrodectus more than a fraction of the interest on the interest from Himself’s rearview-mirror fortune. InterLace ended up optioning rights to only a couple of his higherbrow productions for its ‘Howls from the Margin’ low-volume-expectation product-line")
      expect(q4.clean_quote).to eq ("‘I’ve been asked to add that Hal here is seeded third, Boys’ 18-and-Under Singles, in the prestigious WhataBurger Southwest Junior Invitational out at the Randolph Tennis Center—’ says what I infer is Athletic Affairs, his cocked head showing a freckled scalp. ‘Out at")
    end
  end
end