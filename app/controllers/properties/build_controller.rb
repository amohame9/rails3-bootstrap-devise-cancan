class Properties::BuildController < ApplicationController
  include Wicked::Wizard

   steps :tenant, :meter, :council, :confirmed 

  def show
    @property = Property.find(params[:property_id])
    @tenants = @property.tenants.new(params[:tenant_id])
    @meter = @property.build_meter
    @property.council_histories.build do |council_history| 
    @council = council_history.build_council 
    end
    render_wizard
  end

  def edit
    @property = Property.find(params[:property_id])
  end


  def update
    @property = Property.find(params[:property_id])
    params[:property][:status] = step.to_s
    params[:property][:status] = 'active' if step == steps.last
    @property.update_attributes(params[:property])
    render_wizard @property
  end


  def create
    @property = current_user.properties.build(params[:property])
      logger.info @property.attributes
    if @property.save
        flash[:success] = "Tenant Added"
        redirect_to wizard_path(steps.second, :property_id => @property.id)
    else
        render 'edit'
    end
  end
end
