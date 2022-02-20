module Mutations
  module Reservation
    class Update < BaseMutation
      graphql_name 'ReservationUpdate'
      description 'updates reservation.'

      field :reservation, Types::ReservationType, null: true

      argument :date, String, required: true, camelize: false
      argument :status, Enum::ReservationStatusTypeType, required: true, camelize: false
      argument :guest_count, Integer, required: true, camelize: false
      argument :note, String, required: true, camelize: false
      argument :reservation_id, ID, required: true, camelize: false

      def resolve(**args)
        reservation = ::Reservation.find(args[:reservation_id])

        reservation.update!(
          date: args[:date],
          status: args[:status],
          guest_count: args[:guest_count],
          note: args[:note]
        )

        { reservation: reservation }
      end
    end
  end
end
