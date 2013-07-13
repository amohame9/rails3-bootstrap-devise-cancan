class Property < ActiveRecord::Base
  attr_accessible  :name, :address_attributes
  belongs_to :user 

  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address

  validates :name, presence: true,  length: { maximum: 200 }
  validates :address, presence: true
  validates :user_id, presence: true

end
