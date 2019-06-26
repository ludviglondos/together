# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database"
Category.destroy_all
ActivityPost.destroy_all
ActivityUser.destroy_all
User.destroy_all
puts "Database cleaned"
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Generate some users
user_a = User.create!(email: "test@email.com", password: "123456", first_name: "Ludvig", last_name: "L", username: "Laddy", url: "ludvig_londos.jpeg")
user_b = User.create!(email: "test2@email.com", password: "123456", first_name: "Karina", last_name: "H", username: "Pixelmybit", url: "pixelmybit.jpeg")
user_c = User.create!(email: "test3@email.com", password: "123456", first_name: "Johan", last_name: "H", username: "Johak11", url: "casual.jpg")
user_d = User.create!(email: "test4@email.com", password: "123456", first_name: "Andreas", last_name: "M", username: "Johak12", url: "casual.jpg")
user_e = User.create!(email: "test5@email.com", password: "123456", first_name: "Fiona", last_name: "K", username: "Johak13", url: "casual.jpg")
user_f = User.create!(email: "test6@email.com", password: "123456", first_name: "Nick", last_name: "F", username: "Johak14", url: "casual.jpg")
user_g = User.create!(email: "test7@email.com", password: "123456", first_name: "Amanda", last_name: "S", username: "Johak15", url: "casual.jpg")
user_h = User.create!(email: "test8@email.com", password: "123456", first_name: "Mike", last_name: "S", username: "Johak16", url: "casual.jpg")
user_i = User.create!(email: "test9@email.com", password: "123456", first_name: "Anne", last_name: "H", username: "Johak17", url: "casual.jpg")
user_j = User.create!(email: "test10@email.com", password: "123456", first_name: "Vincent", last_name: "V", username: "Johak18", url: "casual.jpg")

# Generate the test categories
category_1 = Category.create!(name: "Walking", url: "https://images.unsplash.com/photo-1491438590914-bc09fcaaf77a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", url_small:"https://images.unsplash.com/photo-1476459216969-94c7100f88a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
category_2 = Category.create!(name: "Fika", url: "https://images.unsplash.com/photo-1475552113915-6fcb52652ba2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", url_small:"https://images.unsplash.com/photo-1509042239860-f550ce710b93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
category_3 = Category.create!(name: "Sports", url: "https://images.unsplash.com/photo-1527634311077-9943f7df34e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", url_small:"https://images.unsplash.com/photo-1534255355456-2d8e6930c5e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

# Generate a number of test activities for the 28th june
activity_post_1 = ActivityPost.create!(description: "I plan to take a walk to the pier and back again", start_time: "2019-06-28 12:45", duration: 15, capacity: 2, title: "Walk and not talk", category_id: category_1.id , user_id: user_a.id, location: "Sockerbruket")
activity_post_2 = ActivityPost.create!(description: "Lets do some power walking!", start_time: "2019-06-28 11:00", duration: 20, capacity: 10, title: "Talk and walk", category_id: category_1.id , user_id: user_i.id)
activity_post_3 = ActivityPost.create!(description: "How about a walk around the IKEA building", start_time: "2019-06-28 14:40", duration: 30, capacity: 5, title: "Walk and talk", category_id: category_1.id , user_id: user_j.id ,location: "Sockerbruket")
activity_post_4 = ActivityPost.create!(description: "Anyone want to go to the beach?", start_time: "2019-06-28 12:30", duration: 10, capacity: 5, title: "Walk and talk", category_id: category_1.id , user_id: user_b.id)

activity_post_5 = ActivityPost.create!(description: "I want to have a fika and talk about the news", start_time: "2019-06-28 10:30", duration: 30, capacity: 2, title: "Just fika", category_id: category_2.id , user_id: user_g.id)
activity_post_6 = ActivityPost.create!(description: "Kanelbulle? Ja tack!", start_time: "2019-06-28 10:30", duration: 45, capacity: 40, title: "Fika for the many", category_id: category_2.id , user_id: user_b.id)
activity_post_7 = ActivityPost.create!(description: "I want to fika and voice my idea for a new app..", start_time: "2019-06-28 14:45", duration: 10, capacity: 20, title: "Fika and debate?", category_id: category_2.id , user_id: user_d.id, location: "Sockerbruket" )

activity_post_8 = ActivityPost.create!(description: "Do you dare to face me?", start_time: "2019-06-28 15:35", duration: 180, capacity: 2, title: "Chess Match", category_id: category_3.id , user_id: user_c.id)
activity_post_9 = ActivityPost.create!(description: "We need one more for a Padel match..", start_time: "2019-06-28 15:00", duration: 60, capacity: 4, title: "Padel", category_id: category_3.id , user_id: user_a.id)
activity_post_10 = ActivityPost.create!(description: "Come a long and take a refreshing dip!", start_time: "2019-06-28 10:15", duration: 30, capacity: 2, title: "Swimming", category_id: category_3.id , user_id: user_b.id, location: "Sockerbruket")
activity_post_11 = ActivityPost.create!(description: "Join us for a lunch run, everyone can join! ", start_time: "2019-06-28 11:50", duration: 45, capacity: 10, title: "Running", category_id: category_3.id , user_id: user_e.id)
activity_post_12 = ActivityPost.create!(description: "Service Desk vs Infrastructure Managers", start_time: "2019-06-28 10:00", duration: 90, capacity: 22, title: "Fotball", category_id: category_3.id , user_id: user_g.id, location: "Älmhult")

# Generate a number of bookings
booking_1 = ActivityUser.create!(user_id: user_a.id, activity_post_id: activity_post_1.id)
booking_2 = ActivityUser.create!(user_id: user_a.id, activity_post_id: activity_post_2.id)
booking_3 = ActivityUser.create!(user_id: user_a.id, activity_post_id: activity_post_3.id)
booking_4 = ActivityUser.create!(user_id: user_a.id, activity_post_id: activity_post_4.id)
booking_5 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_1.id)
booking_6 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_2.id)
booking_7 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_3.id)
booking_8 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_4.id)
booking_9 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_1.id)
booking_10 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_2.id)
booking_11 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_3.id)
booking_12 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_4.id)
booking_13 = ActivityUser.create!(user_id: user_a.id, activity_post_id: activity_post_1.id)
booking_14 = ActivityUser.create!(user_id: user_a.id, activity_post_id: activity_post_1.id)
booking_15 = ActivityUser.create!(user_id: user_a.id, activity_post_id: activity_post_1.id)
booking_16 = ActivityUser.create!(user_id: user_a.id, activity_post_id: activity_post_1.id)

# Generate a number of test activities for the 29th june

