class AddTypeToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :type, :string
  end
end
