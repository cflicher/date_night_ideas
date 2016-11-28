class DateIdea < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
