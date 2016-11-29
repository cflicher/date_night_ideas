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

  validates :date_idea_id, :uniqueness => { :scope => [:user_id] }

  validates :date_idea_id, :presence => true

  validates :date_idea_rating, :presence => true

  validates :date_idea_rating, :numericality => { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 0 }

  validates :user_id, :uniqueness => { :scope => [:date_idea_id] }

  validates :user_id, :presence => true

end
