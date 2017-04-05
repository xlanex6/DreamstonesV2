class AddTeamOrderToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :team_order, :integer
  end
end
