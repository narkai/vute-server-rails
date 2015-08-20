class Vute < ActiveRecord::Base

  validates :keyword, presence: true

  belongs_to :user
  validates :user_id, presence: true

end
