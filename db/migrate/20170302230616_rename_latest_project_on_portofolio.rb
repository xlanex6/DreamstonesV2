class RenameLatestProjectOnPortofolio < ActiveRecord::Migration[5.0]
  def change
    rename_table :latest_projects, :portofolios
  end
end
