class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

 def home
 	 @feed_items = current_user.feed.paginate(page: params[:page]) if signed_in
 end
end
