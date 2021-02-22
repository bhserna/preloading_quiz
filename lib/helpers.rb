def display_rooms(accomodation)
  puts "Rooms"
  accomodation.rooms.each do |room|
    pp room
  end
end

def display_reviews(accomodation)
  puts "Reviews"
  accomodation.reviews.each do |room|
    pp room
  end
end

def display_with_rooms(accomodations)
  accomodations.each do |accomodation|
    puts
    puts accomodation.inspect
    display_rooms(accomodation)
  end
end

def display_with_reviews(accomodations)
  accomodations.each do |accomodation|
    puts
    puts accomodation.inspect
    display_reviews(accomodation)
  end
end

def display_with_reviews_and_rooms(accomodations)
  accomodations.each do |accomodation|
    puts
    puts accomodation.inspect
    display_reviews(accomodation)
    display_rooms(accomodation)
  end
end

def display_with_reviews_and_avg_stars(accomodations)
  accomodations.each do |accomodation|
    puts
    puts accomodation.inspect
    puts "Stars: #{accomodation.stars}"
    display_reviews(accomodation)
  end
end
