class PortofoliosController < ApplicationController
  before_action :set_portofolio, only: [:edit, :update]
  # skip_before_action :authenticate_user!, only:  [:index]

  def index
    @portofolio = Portofolio.all
  end

  def new
    @portofolio = Portofolio.new
  end

  def create
    @portofolio = Portofolio.new(portofolio_params)
      if @portofolio.save
        redirect_to root_path, notice: "Your latest project has been succefully added"
      else
        render :new
      end
  end

  def update
      if @portofolio.update(portofolio_params)
        redirect_to root_path, notice: "Your latest project has been succefully updated"
      else
        render :edit
      end
  end

  private

  def set_portofolio
    @portofolio = Portofolio.find(params[:id])
  end

  def portofolio_params
    params.require(:portofolio).permit( :main_picture,
                                            :title,
                                            :area,
                                            :category,
                                            :size,
                                            photos: [])

  end

end
