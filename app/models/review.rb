class Review < ApplicationRecord
  # Direct associations

  belongs_to :date_idea

  belongs_to :user

  has_many   :helpful_ratings,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  # Indirect associations

  has_many   :helpful_user,
             :through => :helpful_ratings,
             :source => :user

  # Validations

end
