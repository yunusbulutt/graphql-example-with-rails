module Mutations
  module Reservation
    class Delete < BaseMutation
      graphql_name 'ReservationDelete'

      field :status, Boolean, null: true

      argument :reservation_id, ID, required: true, camelize: false

      def resolve(**args)
        reservation = ::Reservation.find(args[:reservation_id])
        reservation.destroy!

        { status: true }
      end
    end
  end
end
