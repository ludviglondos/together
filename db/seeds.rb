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

# Generate the test categories
category_1 = Category.create!(name: "Walking", url: "walking_card.jpg")
category_2 = Category.create!(name: "Fika", url: "fika_card.jpg")
category_3 = Category.create!(name: "Lunch", url: "lunch_card.jpg")
category_4 = Category.create!(name: "Padel", url: "https://confidentials.com/uploads/imager/7d647db7ceea1d5bfb38bb43a19d60d5/638511/ac9380f6d43bf737e78794120c474203.jpg")

# Generate a number of test activities for the 28th june
activity_post_1 = ActivityPost.create!(description: "I plan to take a walk around the IKEA building", start_time: "2019-06-28 12:45", duration: 15, capacity: 2, title: "Walk and not talk", category_id: category_1.id , user_id: user_a.id)
activity_post_2 = ActivityPost.create!(description: "Lets take a walk around the IKEA building", start_time: "2019-06-28 11:00", duration: 20, capacity: 10, title: "Talk and walk", category_id: category_1.id , user_id: user_b.id)
activity_post_3 = ActivityPost.create!(description: "We need to move how about a a walk around the IKEA building", start_time: "2019-06-28 14:40", duration: 30, capacity: 5, title: "Walk and talk", category_id: category_1.id , user_id: user_c.id)
activity_post_4 = ActivityPost.create!(description: "Anyone want to go to a field?", start_time: "2019-06-28 12:30", duration: 10, capacity: 5, title: "Walk and talk", category_id: category_1.id , user_id: user_b.id)

activity_post_5 = ActivityPost.create!(description: "I want to have a fika and talk about the news", start_time: "2019-06-28 10:30", duration: 30, capacity: 2, title: "Just fika", category_id: category_2.id , user_id: user_a.id)
activity_post_6 = ActivityPost.create!(description: "Kanelbulle? Ja tack!", start_time: "2019-06-28 10:00", duration: 45, capacity: 2, title: "Fika", category_id: category_2.id , user_id: user_b.id)
activity_post_7 = ActivityPost.create!(description: "Im leaving for china, come say bye with a fika!", start_time: "2019-06-28 12:45", duration: 10, capacity: 20, title: "Fika bye bye", category_id: category_2.id , user_id: user_a.id)

activity_post_8 = ActivityPost.create!(description: "I'm having lunch at the canteen at the store, anyone want to join?", start_time: "2019-06-28 11:35", duration: 35, capacity: 2, title: "Lunch at the store", category_id: category_3.id , user_id: user_c.id)
activity_post_9 = ActivityPost.create!(description: "Lunch?", start_time: "2019-06-28 12:00", duration: 30, capacity: 2, title: "Lunch at Hubhult", category_id: category_3.id , user_id: user_a.id)
activity_post_10 = ActivityPost.create!(description: "I plan to take eat at ChopChop", start_time: "2019-06-28 12:15", duration: 30, capacity: 4, title: "Asian food time", category_id: category_3.id , user_id: user_b.id)
activity_post_11 = ActivityPost.create!(description: "I want to eat and have my idea for the new app challenged", start_time: "2019-06-28 11:50", duration: 45, capacity: 2, title: "Lunch and debate?", category_id: category_3.id , user_id: user_b.id)

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
activity_post_22 = ActivityPost.create!(description: "I plan to take a walk around the IKEA building", start_time: "2019-06-29 12:45", duration: 15, capacity: 2, title: "Walk and not talk", category_id: category_1.id , user_id: user_a.id)
activity_post_12 = ActivityPost.create!(description: "Lets take a walk around the IKEA building", start_time: "2019-06-29 11:00", duration: 20, capacity: 10, title: "Talk and walk", category_id: category_1.id , user_id: user_b.id)
activity_post_13 = ActivityPost.create!(description: "We need to move how about a a walk around the IKEA building", start_time: "2019-06-29 14:40", duration: 30, capacity: 5, title: "Walk and talk", category_id: category_1.id , user_id: user_c.id)
activity_post_14 = ActivityPost.create!(description: "Anyone want to go to a field?", start_time: "2019-06-29 12:30", duration: 10, capacity: 5, title: "Walk and talk", category_id: category_1.id , user_id: user_b.id)

activity_post_15 = ActivityPost.create!(description: "I want to have a fika and talk about the news", start_time: "2019-06-29 10:30", duration: 30, capacity: 2, title: "Just fika", category_id: category_2.id , user_id: user_a.id)
activity_post_16 = ActivityPost.create!(description: "Kanelbulle? Ja tack!", start_time: "2019-06-29 10:00", duration: 45, capacity: 2, title: "Fika", category_id: category_2.id , user_id: user_b.id)
activity_post_17 = ActivityPost.create!(description: "Im leaving for china, come say bye with a fika!", start_time: "2019-06-29 12:45", duration: 10, capacity: 20, title: "Fika bye bye", category_id: category_2.id , user_id: user_a.id)

activity_post_18 = ActivityPost.create!(description: "I'm having lunch at the canteen at the store, anyone want to join?", start_time: "2019-06-29 11:35", duration: 35, capacity: 2, title: "Lunch at the store", category_id: category_3.id , user_id: user_c.id)
activity_post_19 = ActivityPost.create!(description: "Lunch?", start_time: "2019-06-29 12:00", duration: 30, capacity: 2, title: "Lunch at Hubhult", category_id: category_3.id , user_id: user_a.id)
activity_post_20 = ActivityPost.create!(description: "I plan to take eat at ChopChop", start_time: "2019-06-29 12:15", duration: 30, capacity: 4, title: "Asian food time", category_id: category_3.id , user_id: user_b.id)
activity_post_21 = ActivityPost.create!(description: "I want to eat and have my idea for the new app challenged", start_time: "2019-06-29 11:50", duration: 45, capacity: 2, title: "Lunch and debate?", category_id: category_3.id , user_id: user_b.id)


