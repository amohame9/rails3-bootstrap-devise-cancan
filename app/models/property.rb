class Property < ActiveRecord::Base
  attr_accessible  :name, :address_attributes, :tenants_attributes,
   :meter_attributes, :council_histories_attributes, :council,
   :property_id, :council_id, :status, :council_history_id

  belongs_to :user

  after_commit :send_email

  has_many :council_histories
  accepts_nested_attributes_for :council_histories


  has_many :councils, through: :council_histories, :foreign_key => :council_id
  accepts_nested_attributes_for :councils


  has_many :tenants, :inverse_of => :property
  accepts_nested_attributes_for :tenants, :allow_destroy => true 

  has_one :meter
  accepts_nested_attributes_for :meter, :allow_destroy => true   

  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address, :allow_destroy => true



  validates :name,      :presence => :true
  validates :address,   :presence => :true
  validates :tenants,   :presence => true, :if => :active_or_tenants?
  #validates :councils,  :presence => true, :if => :send_email?


  def active?
    status == 'active'
  end

  def active_or_tenants?
    (status || '').include?('tenants') || active?
  end

  def active_or_council?
    (status || '').include?('council') || active?

  end

  def send_email
      PropertyMailer.welcome_email(self, tenants, councils).deliver
  end

 
end
