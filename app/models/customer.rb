class Customer < ApplicationRecord
  self.inheritance_column = :_type_disabled

  enum type: { normal: 0, vip: 1, anonym: 2 }

  has_many :reservations
end
