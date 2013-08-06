class Tenant < ActiveRecord::Base
  attr_accessible  :property_id, :contact_type, :dateofbirth, :email, :firstname, :surname, 
  					:telno, :title

  belongs_to :property, :inverse_of => :tenants


  validates_presence_of :contact_type, :dateofbirth, :email, :surname, 
  						:firstname, :surname, :telno, :title
end
