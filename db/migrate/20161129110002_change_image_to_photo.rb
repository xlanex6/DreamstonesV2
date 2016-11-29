class ChangeImageToPhoto < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :image, :photo
  end
end
