class DateIdea < ApplicationRecord
  mount_uploader :cover_photo, CoverPhotoUploader

  # Direct associations

  belongs_to :neighborhood

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :users,
             :through => :reviews,
             :source => :user

  # Validations

end
