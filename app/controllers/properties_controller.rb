class PropertiesController < ApplicationController
  
  
  
  def index
    @property= Property.all
    @property = property.build

  end


  def new
    @property = Property.new  
    @property.build_address
    @property.tenants.build
    @property.build_meter
    @property.council_histories.build
  end

  def show
  	@property = Property.find(params[:property])
    @property = @user.properties.paginate(page: params[:page])
    @property = Property.find(params[:property])
    @addressable = Property.find(params[:property])
    @address = @addressable.address
    @council = @property.council

  end

  def edit
  	@property = Property.find(params[:id])
  end

  def update
  	@property = Property.find(params[:id])
    if @property.update_attributes(params[:property])
      redirect_to (edit_building_path(@property))
    else
      render 'edit'
    end
  end

   def create
    @property = current_user.properties.build(params[:property])
    if @property.save
      flash[:success] = " Property Added"
      redirect_to(building_path(@property))
    else
      render 'edit'
    end
  end

  def destroy
    Property.find(params[:id]).destroy
    flash[:success] = "Property destroyed."
    redirect_to root_url
  end
 
  private

    def correct_user
      @property = current_user.properties.find_by_id(params[:id])
      redirect_to root_url if @property.nil?
    end

end
