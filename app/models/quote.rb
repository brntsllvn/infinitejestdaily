class Quote < ActiveRecord::Base

  validates_length_of :quote, maximum: 135

  has_many :votes, dependent: :destroy

  def vote!(ip)
    unless Vote.recent.exists?(ip: ip, video_id: id)
      increment!(:votes_up) 
      Vote.create(ip: ip, video_id: id)
    end
  end

  def page_number
    a = self.quote.index("Infinite Jest")+15
    self.quote[a..a+20][/\d+/]
  end
  
  def clean_quote
    b = self.quote.index("\n\n")
    self.quote[0..b-1]
  end
end
