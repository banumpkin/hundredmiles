class ChangeDateName < ActiveRecord::Migration
  def change
  	rename_column :runs, :date, :rundate
  end
end
