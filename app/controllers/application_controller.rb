class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_categories
  before_filter :authenticate_admin!
  # before_filter :authenticate_user!

  private

  def set_categories
  	@categories = Category.where(@category_id)
  end
end
