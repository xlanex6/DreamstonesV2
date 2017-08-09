class ContactDemand < ApplicationRecord
  after_create :send_contact_demand_client_notification
  after_create :send_contact_demand_office_notification

  validates :email, presence: true
  validates :full_name, presence: true
  validates :phone, presence: true

  private

  def send_contact_demand_client_notification
    ContactDemandMailer.client(self).deliver_now
  end

  def send_contact_demand_office_notification
    ContactDemandMailer.office(self).deliver_now

  end
end
