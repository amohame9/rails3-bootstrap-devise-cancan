class Address < ActiveRecord::Base

  attr_accessible  :city, :county, :postcode, :street1, :street2

  belongs_to :addressable, polymorphic: true

  validates_presence_of :street1, :street2, :city, :postcode, :county

  validates_uniqueness_of :postcode
end
