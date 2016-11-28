class CreateDateIdeas < ActiveRecord::Migration
  def change
    create_table :date_ideas do |t|
      t.integer :user_id
      t.string :name
      t.integer :neighborhood_id
      t.string :website
      t.string :address
      t.string :cover_photo
      t.integer :price_range
      t.string :description

      t.timestamps

    end
  end
end
