require "rails_helper"

RSpec.describe ContactDemandMailer, type: :mailer do
  describe "client" do
    let(:mail) { ContactDemandMailer.client }

    it "renders the headers" do
      expect(mail.subject).to eq("Client")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "office" do
    let(:mail) { ContactDemandMailer.office }

    it "renders the headers" do
      expect(mail.subject).to eq("Office")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
