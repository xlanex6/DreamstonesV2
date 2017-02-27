class ChangeTypeToTeam < ActiveRecord::Migration[5.0]
  def change
    rename_column :teams, :type, :team_type
  end
end
