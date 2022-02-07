class Agent < ApplicationRecord
  has_secure_password
  has_many :properties
  validates :email, presence: true, uniqueness: true
end
