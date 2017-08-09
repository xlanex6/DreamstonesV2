class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update]
  skip_before_action :authenticate_user!, only: %i[index show renovation new_build]

  def index
    @projects = Project.all
  end

  def renovation
    @projects = Project.only_renovation
    render :index
  end
  def new_build
    @projects = Project.only_new_build
    render :index
  end

  def show
    @portofolios = Portofolio.order(portofolio_order: :asc).last(3)
    speed_optimisation(@project)
    @contact_demand = ContactDemand.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: 'Your project has been succefully added'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Your project has been succefully updated'
    else
      render :edit
    end
  end

  private

  def set_project
    @project = Project.friendly.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title,
                                    :text,
                                    :photo,
                                    :category,
                                    :new_buid,
                                    :renovation,
                                    :extension,
                                    :prestige,
                                    :homepage,
                                    pictures: [])
  end
end
