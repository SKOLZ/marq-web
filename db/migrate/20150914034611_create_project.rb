class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :category
      t.date :date
    end
  end
end
