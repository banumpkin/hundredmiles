class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.decimal :distance
      t.date :date

      t.timestamps
    end
  end
end
