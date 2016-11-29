class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :review,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :photo, :uniqueness => true

  validates :photo, :presence => true

  validates :photo_description, :presence => true

  validates :review_id, :presence => true

end
