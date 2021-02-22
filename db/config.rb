require "active_record"

ActiveRecord::Base.establish_connection(adapter: "postgresql", database: "preloading_quiz")
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Schema.define(version: 1) do
  create_table :accomodations, if_not_exists: true do |t|
    t.column :name, :string
    t.column :bathrooms_count, :decimal
    t.column :guests_count, :integer
  end

  create_table :rooms, if_not_exists: true do |t|
    t.column :accomodation_id, :integer
    t.column :name, :string
    t.column :beds_count, :integer
  end

  create_table :reviews, if_not_exists: true do |t|
    t.column :accomodation_id, :integer
    t.column :body, :text
    t.column :stars, :integer
  end
end
