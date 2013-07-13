class PropertiesController < ApplicationController
  before_filter :authenticate_user!
  
  
  def index
    @property= Property.all
  end


  def new
    @property = Property.new  
    @property.build_address
  end

  def show
  	@property = Property.find(params[:id])
    @property = @user.properties.paginate(page: params[:page])

    @addressable = Property.find(params[:property_id])
    @address = @addressable.address

  end

  def edit
  	@property = Property.find(params[:id])
  end

  def update
  	@property = Property.find(params[:id])
    if @property.update_attributes(params[:property])
      flash[:success] = "Property updated"
      redirect_to @property
    else
      render 'edit'
    end
  end

   def create
    @property = current_user.properties.build(params[:property])
    if @property.save
      flash[:success] = " Property Added"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
     @property.destroy
    redirect_to root_url
  end

  private

    def correct_user
      @property = current_user.properties.find_by_id(params[:id])
      redirect_to root_url if @property.nil?
    end

end
