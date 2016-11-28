class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :review,
             :counter_cache => true

  # Indirect associations

  # Validations

end
