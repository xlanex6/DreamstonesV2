class ContactDemandsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact_demand = ContactDemand.new
  end

  def create
    @project = Project.friendly.find(params[:project_id]) if params[:project_id] != nil
    @contact_demand = ContactDemand.new(contact_demand_params)
    if @contact_demand.save
      redirect_to thanks_path
    else
      render :new
    end
  end


private

  def contact_demand_params
    params.require(:contact_demand).permit(:phone, :email, :message, :phone, :full_name, :project_id)
  end

end
