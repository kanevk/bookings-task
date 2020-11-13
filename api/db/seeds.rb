Booking.destroy_all
Space.destroy_all

%w[Hill-one Banana-city Hippoland].each do |name|
  Space.create!(name: name)
end

spaces = Space.all

100.times do
  space = spaces.sample
  end_date = Date.current.prev_day(rand(1..5))

  Booking.create!(start_date: end_date - 2.days,
                  end_date: end_date,
                  description: "Booking for #{space.name}",
                  space_id: space.id)
end
