module Mutations
  class CreateReservation < BaseMutation
    graphql_name 'CreateReservation'

    argument :date, GraphQL::Types::ISO8601DateTime, required: true, camelize: false
    argument :status, Enum::ReservationStatusTypeType, required: true, camelize: false
    argument :guest_count, Integer, required: true, camelize: false
    argument :note, String, required: true, camelize: false

    type Types::ReservationType

    def resolve(**args)
      Reservation.create!(
        date: args[:date],
        status: args[:status],
        guest_count: args[:guest_count],
        note: args[:note]
      )
    end
  end
end
