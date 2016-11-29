class Venue < ApplicationRecord
  # Direct associations

  belongs_to :date,
             :class_name => "DateIdea",
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :city, :uniqueness => { :scope => [:street_address_1, :street_address_2, :state, :date_id, :zip_code, :venue_title] }

  validates :city, :presence => true

  validates :date_id, :uniqueness => { :scope => [:venue_title] }

  validates :date_id, :presence => true

  validates :state, :uniqueness => { :scope => [:street_address_1, :city, :street_address_2, :date_id, :zip_code, :venue_title] }

  validates :state, :presence => true

  validates :street_address_1, :uniqueness => { :scope => [:city, :street_address_2, :state, :date_id, :zip_code, :venue_title] }

  validates :street_address_1, :presence => true

  validates :street_address_2, :uniqueness => { :scope => [:street_address_1, :city, :state, :date_id, :zip_code, :venue_title] }

  validates :venue_description, :uniqueness => { :allow_blank => true }

  validates :venue_title, :uniqueness => { :scope => [:date_id] }

  validates :venue_title, :presence => true

  validates :zip_code, :uniqueness => { :scope => [:street_address_1, :city, :street_address_2, :state, :date_id, :venue_title] }

  validates :zip_code, :presence => true

end
