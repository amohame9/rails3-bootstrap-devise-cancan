class CouncilsProperties < ActiveRecord::Base
  attr_accessible :council_id, :property_id

  belongs_to :council

  belongs_to :property
end
