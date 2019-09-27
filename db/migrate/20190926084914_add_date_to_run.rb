class AddDateToRun < ActiveRecord::Migration[6.0]
  def change
    add_column :runs, :date, :date
    add_column :runs, :pace, :decimal
    add_column :runs, :heartrate, :integer
  end
end
