class Store < ApplicationRecord
  has_many :reservations
  has_many :customers

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end

# == Schema Information
#
# Table name: stores
#
#  id           :bigint           not null, primary key
#  name         :string
#  address      :text
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
