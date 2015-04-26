class AddUserToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :user_id, :integer
    add_index :runs, :user_id
  end
end
