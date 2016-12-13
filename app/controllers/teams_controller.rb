class TeamsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @teams = Team.all
    @trades = YAML.load_file("#{Rails.root}/config/data/trades.yml")
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path, notice: "Your member as been added succefully"
    else
      render :new
    end

  end

  private

  def team_params
    params.require(:team).permit(:name, :photo)
  end
end
