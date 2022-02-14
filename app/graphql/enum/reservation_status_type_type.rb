module Enum
  class ReservationStatusTypeType < BaseEnum
    Reservation.statuses.each do |key, value|
      value(key, value: value)
    end
  end
end
