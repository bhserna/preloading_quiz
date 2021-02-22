# Quiz to practice the difference between preload, includes or eager_load

Do you know "in theory" [the difference between "includes", "preload", "eager_load" and "joins"](https://bhserna.com/includes-preload-eager-load-joins-in-rails.html), but you still think that you need to practice a little more?

Here you will find a set of exercises to help you understand how you can use this 4 methods.

This is are the exercises for the post [Examples to learn the difference between preload, includes or eager_load](https://bhserna.com/examples-to-learn-the-difference-between-preload-includes-eager-load.html), you can find the answers there.

On `/exercises` you will find a list of exercises with:

* The description of a task
* And a function to write the results

You should provide a way to fetch the records.

For example:

```ruby
puts "-----------------------------"
puts "TASK"
puts "1. Fetch all acomodations preloading rooms (with includes)"
puts "-----------------------------"

# accomodations = ?
# display_with_rooms(accomodations)
```

## How to run the examples

1. **Create a postgres database** with `createdb preloading_quiz`. As
   you can see the in `db/config.rb` the name of the database is hardcoded, so
   you will need to create a database with that name.

2. **Install the dependencies** with `bundle install`.

3. **Run the seeds** with `ruby db/seeds.rb`. You can also update the data that
   you want to use, there.

4. **Run the exercises** with `ruby exercises/01.rb`, etc...
