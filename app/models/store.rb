class Store < ApplicationRecord
  has_many :reservations
  has_many :customers

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
