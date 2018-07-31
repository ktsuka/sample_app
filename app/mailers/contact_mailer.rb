class ContactMailer < ActionMailer::Base
  default from: "contact_master@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sent.subject
  #
  def sent(contact)
    @contact = contact
    mail(to: [@contact.email,"mc50mk2@gmail.com"], subject: "Thank you for your contact!")
  end
end
