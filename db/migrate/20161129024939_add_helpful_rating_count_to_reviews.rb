class AddHelpfulRatingCountToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :helpful_ratings_count, :integer
  end
end
