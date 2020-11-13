module Types
  class BookingType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: true
    field :start_date, GraphQL::Types::ISO8601Date, null: true
    field :end_date, GraphQL::Types::ISO8601Date, null: true
    field :space_id, ID, null: false
  end
end
