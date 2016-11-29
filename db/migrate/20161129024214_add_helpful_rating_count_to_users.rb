class AddHelpfulRatingCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :helpful_ratings_count, :integer
  end
end
