module Mutations
  module Reservation
    class Create < BaseMutation
      graphql_name 'ReservationCreate'
      description 'creates reservation.'

      field :reservation, Types::ReservationType, null: true

      argument :date, String, required: true, camelize: false
      argument :status, Enum::ReservationStatusTypeType, required: true, camelize: false
      argument :guest_count, Integer, required: true, camelize: false
      argument :note, String, required: true, camelize: false

      def resolve(**args)
        reservation = ::Reservation.create!(
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
