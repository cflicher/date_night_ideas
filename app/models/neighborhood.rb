class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :date_ideas,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
