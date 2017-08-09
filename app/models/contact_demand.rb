class ContactDemand < ApplicationRecord
  after_create :send_contact_demand_client_notification
  after_create :send_contact_demand_office_notification

  private

  def send_contact_demand_client_notification
    ContactDemandMailer.client(self).deliver_now
  end

  def send_contact_demand_office_notification
    ContactDemandMailer.office(self).deliver_now

  end
end
