class Customer < ApplicationRecord
  self.inheritance_column = :_type_disabled

  belongs_to :store, optional: true
  has_many :reservations

  enum type: { normal: 0, vip: 1, anonym: 2 }

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end

# == Schema Information
#
# Table name: customers
#
#  id           :bigint           not null, primary key
#  first_name   :string
#  last_name    :string
#  phone_number :string
#  email        :string
#  type         :integer          default("normal")
#  country      :string
#  store_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
