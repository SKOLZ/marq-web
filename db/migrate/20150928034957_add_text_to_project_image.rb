class AddTextToProjectImage < ActiveRecord::Migration
  def change
    add_column :project_images, :text, :string
  end
end
