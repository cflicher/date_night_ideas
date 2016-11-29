class Website < ApplicationRecord
  # Direct associations

  belongs_to :date,
             :class_name => "DateIdea",
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :date_id, :presence => true

  validates :url, :uniqueness => { :scope => [:date_id] }

  validates :url, :presence => true

end
