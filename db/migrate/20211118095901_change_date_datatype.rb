class ChangeDateDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :start_time, :datetime
    change_column :appointments, :end_time, :datetime
  end
end
