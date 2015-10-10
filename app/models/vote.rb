class Vote < ActiveRecord::Base
#   validates_uniqueness_of :request.ip
  
  belongs_to :quote

  
  #   scope :recent, -> { where("created_at > ?", 2.hours.ago) }

end
