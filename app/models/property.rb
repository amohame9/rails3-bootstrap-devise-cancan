class Property < ActiveRecord::Base
  attr_accessible  :name, :address_attributes, :tenants_attributes, :meter_attributes, :property_id, :status
  belongs_to :user 


  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address, :allow_destroy => true



  has_many :tenants, :inverse_of => :property
  accepts_nested_attributes_for :tenants, :allow_destroy => true, :reject_if     => :all_blank

  has_one :meter
  accepts_nested_attributes_for :meter, :allow_destroy => true


  validates :name,      :presence => :true
  validates :address,   :presence => :true
  validates :tenants,   :presence => true, :if => :active_or_tenants?


  def active?
    status == 'active'
  end

  def active_or_tenants?
    (status || '').include?('tenants') || active?
  end


  def reject_address(attributed)
    attributed['street1'].blank?
  end

 
end
