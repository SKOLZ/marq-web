class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images do |t|
      t.references :project, index: true, foreign_key: true
      t.string :image
      t.timestamps null: false
    end
  end
end
