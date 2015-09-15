class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :date
      t.references :category
    end
  end
end
