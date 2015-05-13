class AddDescToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :description, :string
  end
end
