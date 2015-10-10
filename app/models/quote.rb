class Quote < ActiveRecord::Base

  has_many :votes, dependent: :destroy
  
  def vote!(ip)
    unless Vote.recent.exists?(ip: ip, video_id: id)
      increment!(:votes_up) 
      Vote.create(ip: ip, video_id: id)
    end
  end

end
