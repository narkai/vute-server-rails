class User < ActiveRecord::Base

	# attr_accessible :email, :password, :password_confirmation
	has_secure_password
	validates :password, length: { minimum: 3 }, allow_nil: true
	# validates_presence_of :password, :on => :create

	# validates :password_confirmation, presence: true

	# validates_presence_of :name, :email
	validates :email, uniqueness: true

	has_many :vutes

	#

	# permit_params :name, :email, :password_digest, :password, :password_confirmation
	
	# validates_confirmation_of :password
	# validates :password, length: { minimum: 8 }, allow_nil: true
	# validates :password, presence: true, length: { minimum: 6 }
	# validates :password_confirmation, presence: true
	# validates :password, :presence =>true, :confirmation =>true
 	# validates_confirmation_of :password

	# has_many :oauth_applications, class_name: 'Doorkeeper::Application', as: :owner
end
