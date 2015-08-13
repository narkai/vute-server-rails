class User < ActiveRecord::Base

  validates :name, presence: true

  has_secure_password

  validates :email, uniqueness: true

  validates :password, length: { minimum: 3 }, allow_nil: true

  has_many :vutes

end
