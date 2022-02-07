class Applicant < ApplicationRecord
  has_secure_password
  has_many :applications
  validates :email, presence: true, uniqueness: true
end
