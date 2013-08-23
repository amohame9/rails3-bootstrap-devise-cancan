class PropertyCompletion
  attr_accessor :property, :tenants, :councils, :council_id

  def initialize(property, tenants, councils, council_histories_attributes)
    @property = property
    @councils = councils
    @tenants = tenants
  end

  def create
      if  property = Property.create(params[:councils])
      self.property_completion_notification
    end
  end

  def property_completion_notification
    PropertyMailer.welcome_email(self.property, tenants, councils).deliver
  end  
end