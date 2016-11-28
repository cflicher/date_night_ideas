class Review < ApplicationRecord
  # Direct associations

  has_many   :helpful_ratings,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
