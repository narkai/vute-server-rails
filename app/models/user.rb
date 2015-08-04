class User < ActiveRecord::Base
	has_secure_password
	# attr_accessible :email, :password, :password_confirmation
	# validates_presence_of :password, :on => :create
	# validates :password, length: { minimum: 8 }, allow_nil: true
	# has_many :oauth_applications, class_name: 'Doorkeeper::Application', as: :owner
	# validates_confirmation_of :password
end
