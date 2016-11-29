class HelpfulRating < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :review,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :review_id, :uniqueness => { :scope => [:user_id] }

  validates :review_id, :presence => true

  validates :user_id, :uniqueness => { :scope => [:review_id] }

  validates :user_id, :presence => true

end
