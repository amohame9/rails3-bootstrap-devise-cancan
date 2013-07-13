class Address < ActiveRecord::Base

  attr_accessible  :city, :county, :postcode, :street1, :street2

  belongs_to :addressable, polymorphic: true

  validates :city, presence: true,  length: { maximum: 200 }
  validates :street1, presence: true
  validates :postcode, presence: true
  validates :county, presence: true
end
