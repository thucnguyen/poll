class Question < ActiveRecord::Base
  
  # asociation
  has_many :polls
  
  accepts_nested_attributes_for :polls
  
  # def polls_for_form
    # collection = polls.where(question_set_id: id)
    # collection.any? ? collection : polls.build
  # end
end
