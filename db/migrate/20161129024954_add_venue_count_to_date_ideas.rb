class AddVenueCountToDateIdeas < ActiveRecord::Migration[5.0]
  def change
    add_column :date_ideas, :venues_count, :integer
  end
end
