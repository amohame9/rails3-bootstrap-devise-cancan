class AddressesController < ApplicationController

  def index
  	@addressable = Property.find(params[:property_id])
  	@addresses = @addressable.address
  end

  def new
  end
end
