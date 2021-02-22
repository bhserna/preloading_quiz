require_relative "../lib/models"

data = [
  {
    name: "Home1",
    guests_count: 3,
    rooms: [
      { name: "R1", beds_count: 2 },
      { name: "R2", beds_count: 3 }
    ],
    reviews: [
      { body: "B1", stars: 3 },
      { body: "B2", stars: 3 },
      { body: "B3", stars: 3 },
    ]
  },
  {
    name: "Home2",
    guests_count: 4,
    rooms: [
      { name: "R1", beds_count: 4 },
      { name: "R2", beds_count: 3 }
    ],
    reviews: [
      { body: "B1", stars: 4 },
      { body: "B2", stars: 4 },
      { body: "B3", stars: 4 }
    ]
  },
  {
    name: "Home3",
    guests_count: 5,
    rooms: [
      { name: "R1", beds_count: 6 },
      { name: "R2", beds_count: 3 }
    ],
    reviews: [
      { body: "B1", stars: 5 },
      { body: "B2", stars: 5 },
      { body: "B3", stars: 5 }
    ]
  },
  {
    name: "Home4",
    guests_count: 7,
    rooms: [
      { name: "R1", beds_count: 6 },
      { name: "R2", beds_count: 3 }
    ],
    reviews: [
      { body: "B1", stars: 5 },
      { body: "B2", stars: 4 },
      { body: "B3", stars: 4 }
    ]
  },
]

Accomodation.destroy_all

data.each do |accomodation_data|
  accomodation = Accomodation.create(accomodation_data.slice(:name, :guests_count))

  accomodation_data[:rooms].each do |room_data|
    accomodation.rooms.create(room_data)
  end

  accomodation_data[:reviews].each do |review_data|
    accomodation.reviews.create(review_data)
  end
end
