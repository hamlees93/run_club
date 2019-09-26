class CreateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :runs do |t|
      t.decimal :distance
      t.decimal :time

      t.timestamps
    end
  end
end
