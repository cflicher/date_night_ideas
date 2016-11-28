class HelpfulRating < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :review,
             :counter_cache => true

  # Indirect associations

  # Validations

end
