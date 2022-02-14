class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :store

  enum status: { init: 0, confirm: 1, sitting: 2, noshow: 3, cancel: 4, done: 5 }
end
