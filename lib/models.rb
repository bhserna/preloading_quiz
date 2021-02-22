require_relative "../db/config"

class Accomodation < ActiveRecord::Base
  has_many :rooms
  has_many :reviews
end

class Room < ActiveRecord::Base
end

class Review < ActiveRecord::Base
end
