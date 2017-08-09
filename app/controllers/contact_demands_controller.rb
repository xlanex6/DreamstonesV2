class ContactDemandsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @project = Project.friendly.find(params[:project_id])
    @contact_demand = ContactDemand.new(contact_demand_params)
    if @contact_demand.save
      redirect_to project_path(@project), notice: "weel done"
    else
    end
  end


private

  def contact_demand_params
    params.require(:contact_demand).permit(:phone, :message, :phone, :full_name, :project_id)
  end

end
