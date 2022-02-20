class Reservation < ApplicationRecord
  belongs_to :store
  belongs_to :customer

  enum status: { init: 0, confirm: 1, sitting: 2, noshow: 3, cancel: 4, done: 5 }

  validates :date, presence: true
  validates :guest_count, presence: true
end
