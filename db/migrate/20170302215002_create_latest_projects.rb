class CreateLatestProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :latest_projects do |t|
      t.string :title
      t.string :area
      t.string :category
      t.string :size

      t.timestamps
    end
  end
end
