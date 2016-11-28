class AddDateIdeaCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :date_ideas_count, :integer
  end
end
