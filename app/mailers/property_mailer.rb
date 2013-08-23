class PropertyMailer < ActionMailer::Base
  default from: "myemail@gmail.com"

  def welcome_email(property, tenants, councils)
    @property = property
    @tenants = tenants
    @councils = councils
    mail(:to => property.councils.first.email, subject: 'Here are your property details')
  end
end
