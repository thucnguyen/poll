class Poll < ActiveRecord::Base
  belongs_to :question
  
  # validations
  validates :name, presence: true
end
