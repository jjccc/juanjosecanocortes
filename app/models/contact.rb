class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone, :captcha_error
  attr_accessor :captcha_error
end
