class RemoveColumnStartDateAndEndDateFromEvents < ActiveRecord::Migration[6.0]
  def up
    remove_column :events, :start_date
    remove_column :events, :end_date
  end

  def down
    add_column :events, :start_date, :date
    add_column :events, :end_date, :date
  end
end
