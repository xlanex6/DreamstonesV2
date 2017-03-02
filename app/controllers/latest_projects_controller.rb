class LatestProjectsController < ApplicationController
  set_action :set_latest_project, only: [:edit, :update]
  skip_before_action :authenticate_user!, only:  [:index]

  def index
    @latest_project = LatestProject.all
  end

  def new
    @latest_project = LatestProject.new
  end

  def create
    @latest_project = LatestProject.new(latest_project_params)
      if @latest_project.save
        redirect_to root_path, notice: "Your latest project has been succefully added"
      else
        render :new
      end
  end

  def update
      if @latest_project.update(latest_project_params)
        redirect_to root_path, notice: "Your latest project has been succefully updated"
      else
        render :edit
      end
  end

  private

  def set_latest_project
    @latest_project = LatestProject.find(params[:id])
  end

  def latest_project_params
    params.require(:latest_project).permit( :main_picture,
                                            :photos [],
                                            :title,
                                            :area,
                                            :category,
                                            :size)

  end

end
