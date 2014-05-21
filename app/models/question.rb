class Question < ActiveRecord::Base
  
  # asociation
  has_many :polls
end
