class AddDateToProject < ActiveRecord::Migration
  def change
    add_column :projects, :date, :timestamp
  end
end
