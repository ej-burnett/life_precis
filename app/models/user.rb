class User < ActiveRecord::Base
	#attr_accessor is a virtual variable
  attr_accessor :password
  attr_accessible :born, :career, :email_address, :first_name, :hobbies, :last_name, :live_now, :live_past, :misc, :password, :school, :salt, :encrypted_password, :password_confirmation, :avatar1, :avatar2, :avatar3
has_many :notes
has_attached_file :avatar1, :styles => { :medium => "300x300>", :thumb => "100x100>" }
has_attached_file :avatar2, :styles => { :medium => "300x300>", :thumb => "100x100>" }
has_attached_file :avatar3, :styles => { :medium => "300x300>", :thumb => "100x100>" }

email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name, :presence => true, :length => { :maximum => 50 }
  validates :last_name, :presence => true, :length => { :maximum => 50 }
  validates :born, :presence => true, :length => { :maximum => 50 }
  validates :live_now, :presence => true, :length => { :maximum => 50 }
  validates :career, :presence => true, :length => { :maximum => 200 }
  validates :hobbies, :presence => true, :length => { :maximum => 200 }
  validates :email_address,	:presence => true, :format => { :with => email_regex },
           	:uniqueness => { :case_sensitive => false }

  validates :password, 	:presence => true, :confirmation => true, :length => { :within => 6..40 }
  validates :password_confirmation, :presence => true

  before_save :encrypt_password

  def has_password?(submitted_password)
  	encrypted_password == encrypt(submitted_password)
  end

  def has_attached_file

  end
  # class method that checks whether the user's email and submitted_password are valid
  def self.authenticate(email, submitted_password)
  	user = find_by_email(email)

   	return nil if user.nil?
   	return user if user.has_password?(submitted_password)
  end

  def self.find_by_email(email)
  	where(:email_address => email).first
  end

  private
  	def encrypt_password
  		# generate a unique salt if it's a new user
  		self.salt = Digest::SHA2.hexdigest("#{Time.now.utc}--#{password}") if self.new_record?
  	
  		# encrypt the password and store that in the encrypted_password field
  		self.encrypted_password = encrypt(password)
  	end

  	# encrypt the password using both the salt and the passed password
  	def encrypt(pass)
  		Digest::SHA2.hexdigest("#{self.salt}--#{pass}")
  	end

end
