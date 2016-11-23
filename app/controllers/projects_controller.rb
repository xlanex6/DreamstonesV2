class ProjectsController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @projects = Project.all
  end

  def show
  end

  private

  def set_user
    @project = Project.find(params[:id])
  end

end
