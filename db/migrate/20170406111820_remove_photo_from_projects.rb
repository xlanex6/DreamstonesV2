class RemovePhotoFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :photo, :string
  end
end
