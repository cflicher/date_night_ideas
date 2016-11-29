class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.integer :date_id
      t.string :url

      t.timestamps

    end
  end
end
