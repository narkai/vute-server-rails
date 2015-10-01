class User < ActiveRecord::Base

  # validates :name, presence: true
  validates :name, presence: true, uniqueness: true

  has_secure_password
  validates :email, uniqueness: true
  validates :password, length: { minimum: 3 }, allow_nil: true

  # has_many :vutes
  has_many :vutes, dependent: :destroy
  # has_many :vutes, dependent: :delete

end
