class Council < ActiveRecord::Base
  attr_accessible :CouncilEmail, :name, :CouncilTel, :council_histories_attributes


  has_many 	 :council_histories


  has_many   :property, :through => :council_histories, :foreign_key => :property_id
end
