class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone, :captcha_response
  attr_accessor :captcha_response
end
