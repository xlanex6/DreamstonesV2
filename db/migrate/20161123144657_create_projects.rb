class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :image
      t.boolean :new_buid
      t.boolean :renovation
      t.boolean :extension
      t.boolean :prestige

      t.timestamps
    end
  end
end
