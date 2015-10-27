class User < ActiveRecord::Base

  has_secure_password

  #

  has_many :vutes, dependent: :destroy

  #

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :password, length: { minimum: 3 }, allow_nil: true

end
