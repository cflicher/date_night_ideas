class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :date_id
      t.string :venue_title
      t.string :venue_description
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps

    end
  end
end
