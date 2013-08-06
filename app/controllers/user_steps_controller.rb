class UserStepsController < ApplicationController
	include Wicked::Wizard 
	steps :property, :tenant

	def show
	  @property = Property.find(params[:property_id])
 	  render_wizard
	end

	def update
	    @property = Property.find(params[:property_id])
	    @property.update_attributes(params[:property])
	    render_wizard @property
    end

    def create
	    @property = Property.create
	    redirect_to wizard_path(steps.first, :propery_id => @property.id)
	end

end
