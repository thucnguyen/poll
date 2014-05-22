class Question < ActiveRecord::Base
  
  # asociation
  has_many :polls, :dependent => :destroy
  
  accepts_nested_attributes_for :polls, :allow_destroy => true
  
  # def polls_for_form
    # collection = polls.where(question_id: id)
    # collection.any? ? collection : polls.build
  # end
  
  # validations
  validates :content, presence: true
end
