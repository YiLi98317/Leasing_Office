class Property < ApplicationRecord
  belongs_to :agent
  validates :property_id, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :size, presence: true
  validates :earliest_start_date, presence: true
  validates :apply_fee, presence: true
  validates :rent, presence: true
end
