class SuppliersController < ApplicationController


  def new
  	 @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(params[:supplier])
    if @supplier.save
      flash[:success] = "Supplier created!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

end
