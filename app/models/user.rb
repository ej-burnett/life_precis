class User < ActiveRecord::Base
  attr_accessible :born, :career, :email_address, :first_name, :hobbies, :last_name, :live_now, :live_past, :misc, :password, :school

end
