class CouncilHistory < ActiveRecord::Base
  attr_accessible :council_id, :property_id, :vacant, :councils

  belongs_to :council

  belongs_to :property

  belongs_to :tenants


  #after_save :send_email

  private


    def send_email
    	PropertyMailer.welcome_email(property, tenants, councils).deliver
  	end

end
