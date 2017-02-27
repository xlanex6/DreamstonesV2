class SetdefaultTypeToTeam < ActiveRecord::Migration[5.0]
  def change
    change_column_default :teams, :team_type, from: nil, to: "Head-Office"
    Team.update_all(team_type: "Head-Office")
  end
end
