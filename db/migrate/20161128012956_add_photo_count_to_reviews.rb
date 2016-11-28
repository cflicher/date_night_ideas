class AddPhotoCountToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :photos_count, :integer
  end
end
