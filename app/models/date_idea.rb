class DateIdea < ApplicationRecord
  mount_uploader :cover_photo, CoverPhotoUploader

  # Direct associations

  has_many   :venues,
             :foreign_key => "date_id",
             :dependent => :destroy

  has_many   :websites,
             :foreign_key => "date_id",
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :users,
             :through => :reviews,
             :source => :user

  # Validations

  validates :cover_photo, :presence => true

  validates :date_description, :uniqueness => { :scope => [:date_name] }

  validates :date_description, :presence => true

  validates :date_name, :uniqueness => { :scope => [:user_id] }

  validates :date_name, :presence => true

  validates :price_category, :presence => true

  validates :price_category, :inclusion => { :in => [ '$0-$20', '$20-$40', '$40-$80', '>$80 ' ]  }

  validates :user_id, :uniqueness => { :scope => [:date_name] }

  validates :user_id, :presence => true

end
