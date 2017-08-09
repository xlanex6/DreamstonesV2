class ContactDemandsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @project = Project.friendly.find(params[:project_id]) if params[:project_id] != nil
    @contact_demand = ContactDemand.new(contact_demand_params)
    if @contact_demand.save
      if @project == nil
        redirect_to root_path, notice: 'Enquiry sent!'
      else
        redirect_to project_path(@project), notice: "Enquiry sent!"
      end
    end
  end


private

  def contact_demand_params
    params.require(:contact_demand).permit(:phone, :email, :message, :phone, :full_name, :project_id)
  end

end
