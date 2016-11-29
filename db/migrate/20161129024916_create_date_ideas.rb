class CreateDateIdeas < ActiveRecord::Migration
  def change
    create_table :date_ideas do |t|
      t.integer :user_id
      t.string :date_name
      t.string :cover_photo
      t.integer :price_category
      t.string :date_description

      t.timestamps

    end
  end
end
