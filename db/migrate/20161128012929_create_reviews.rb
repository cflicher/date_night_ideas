class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :date_idea_rating
      t.string :date_idea_rating_comment
      t.integer :date_idea_id

      t.timestamps

    end
  end
end
