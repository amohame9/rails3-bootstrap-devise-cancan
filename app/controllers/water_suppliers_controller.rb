class WaterSuppliersController < ApplicationController

	def new
		@water_supplier = WaterSupplier.new
		
	end

	def create
    @water_supplier = WaterSupplier.new(params[:id])
    if @water_supplier.save
      flash[:success] = "Supplier created!"
      redirect_to root_url
    else
      render 'new'
    end
  end
end

