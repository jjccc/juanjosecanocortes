class ContactsController < ApplicationController
  layout false
  
  def index
    authenticate
    @contacts = Contact.order("created_at desc")
  end
  
  def create 
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      Rails.logger.info "-----> #{ENV["RECAPTCHA_SECRET_KEY"]}"
      if verify_recaptcha(model: @contact) && @contact.save
        render :json => @contact.as_json, :status => 200 and return
      else
        render :json => nil, :status => 500 and return
      end
    end
  end
  
  protected
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == Juanjosecanocortes::Application.config.http_authentication_user && password == Juanjosecanocortes::Application.config.http_authentication_password
    end
  end
  
end
