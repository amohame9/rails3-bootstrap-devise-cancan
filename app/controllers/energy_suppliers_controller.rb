class EnergySuppliersController < ApplicationController


	def new
		@energy_supplier = EnergySupplier.new
		
	end

	def create
    @energy_supplier = EnergySupplier.new(params[:id])
    if @energy_supplier.save
      flash[:success] = "Supplier created!"
      redirect_to root_url
    else
      render 'new'
    end
  end
end
