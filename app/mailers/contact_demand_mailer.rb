class ContactDemandMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_demand_mailer.client.subject
  #
  def client(contactdemand)
    @contactdemand = contactdemand
    mail to: @contactdemand.email, subject: 'French home project'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_demand_mailer.office.subject
  #
  def office(contactdemand)
    @contactdemand = contactdemand
    mail to: 'bonjour@dreamstones.co.uk', subject: 'New contact from Website'
  end
end
