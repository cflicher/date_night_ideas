class Neighborhood < ApplicationRecord
  # Direct associations

  belongs_to :city

  has_many   :date_ideas,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
