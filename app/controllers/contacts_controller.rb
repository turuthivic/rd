class ContactsController < ApplicationController
  skip_before_action :authenticate_admin!, only:[:new, :create]
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params[:contact])
  	@contact.request = request
  	if @contact.deliver
  		flash.now[:notice] = 'Thank you for contacting us. We appreciate your feedback'
  	else
  		flash.now[:error] = 'Sorry! Cannot send the message. Please try again'
  		render :new
  	end
  end
end
