class ChangeDefaultCategorieToFalse < ActiveRecord::Migration[5.0]
  def change
    change_column_default :projects, :new_buid, from: nil, to: false
    change_column_default :projects, :prestige, from: nil, to: false
    change_column_default :projects, :extension, from: nil, to: false
    change_column_default :projects, :renovation, from: nil, to: false
  end
end
