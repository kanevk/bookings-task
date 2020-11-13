module Types
  class QueryType < Types::BaseObject
    field :spaces, [SpaceType], null: false
    def spaces
      Space.all
    end

    field :bookings, [BookingType], null: false do
      argument :space_id, ID, required: true
    end
    def bookings(space_id:)
      Booking.where(space_id: space_id)
    end
  end
end
