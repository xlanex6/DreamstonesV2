class ProjectsController < ApplicationController
  before_action :set_user, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @testimonials = Testimonial.limit(2).order("RANDOM()")
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: "Your project has been succefully added"
    else
      render :new
    end
  end


  private

  def set_user
    @project = Project.friendly.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title,
                                    :text,
                                    :photo,
                                    :new_buid,
                                    :renovate,
                                    :extension,
                                    :prestige )
    end

end
