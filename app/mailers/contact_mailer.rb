class ContactMailer < ActionMailer::Base
 default :from => "ldnyanarth@gmail.com"

def registration_confirmation(contact)
      @contact = contact
      mail(:to => "ldnyanarth@gmail.com", :subject => contact.subject)
  end
end
