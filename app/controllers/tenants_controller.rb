class TenantsController < ApplicationController
 


  def index
  	@tenants = Property.find(params[:property_id])
  	@tenants = @tenant.property
  end

  def show
  end
end
