class Property < ActiveRecord::Base
  attr_accessible :address, :name
  belongs_to :user 

  validates :name, presence: true,  length: { maximum: 200 }
  validates :address, presence: true
  validates :user_id, presence: true

end
