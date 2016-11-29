class AddWebsiteCountToDateIdeas < ActiveRecord::Migration[5.0]
  def change
    add_column :date_ideas, :websites_count, :integer
  end
end
