class ChangePaceToText < ActiveRecord::Migration
  def up
   change_column :runs, :pace, :text
  end

  def down
   change_column :runs, :pace, :decimal
  end
end
