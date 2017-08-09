# Preview all emails at http://localhost:3000/rails/mailers/contact_demand_mailer
class ContactDemandMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_demand_mailer/client
  def client
    ContactDemandMailerMailer.client
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_demand_mailer/office
  def office
    ContactDemandMailerMailer.office
  end

end
