class User < ApplicationRecord
  # Direct associations

  has_many   :helpful_ratings,
             :dependent => :destroy

  has_many   :date_ideas

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :helpful_rates,
             :through => :helpful_ratings,
             :source => :review

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
