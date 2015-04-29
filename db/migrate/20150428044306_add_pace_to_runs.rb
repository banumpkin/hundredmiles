class AddPaceToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :pace, :text
  end
end
