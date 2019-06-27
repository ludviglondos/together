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
user_a = User.create!(email: "test@email.com", password: "123456", first_name: "Ludvig", last_name: "L", username: "Laddy", url: "ludvig_londos.jpg")
user_b = User.create!(email: "test2@email.com", password: "123456", first_name: "Karina", last_name: "H", username: "Pixelmybit", url: "female9.jpg")
user_c = User.create!(email: "test3@email.com", password: "123456", first_name: "Johan", last_name: "H", username: "Johak11", url: "female5.jpg")
user_d = User.create!(email: "test4@email.com", password: "123456", first_name: "Andrea", last_name: "M", username: "Andrea12", url: "female1.jpg")
user_e = User.create!(email: "test5@email.com", password: "123456", first_name: "Fiona", last_name: "K", username: "Johak13", url: "female12.jpg")
user_f = User.create!(email: "test6@email.com", password: "123456", first_name: "Nicky", last_name: "F", username: "Johak14", url: "female3.jpg")
user_g = User.create!(email: "test7@email.com", password: "123456", first_name: "Amanda", last_name: "S", username: "Johak15", url: "female4.jpg")
user_h = User.create!(email: "test8@email.com", password: "123456", first_name: "Mike", last_name: "S", username: "Johak16", url: "guy3.jpg")
user_i = User.create!(email: "test9@email.com", password: "123456", first_name: "Anne", last_name: "H", username: "Johak17", url: "female5.jpg")
user_j = User.create!(email: "test10@email.com", password: "123456", first_name: "Vincent", last_name: "V", username: "Johak18", url: "guy8.jpg")
user_k = User.create!(email: "test11@email.com", password: "123456", first_name: "Victoria", last_name: "K", username: "Johak88", url: "female8.jpg")
user_l = User.create!(email: "test12@email.com", password: "123456", first_name: "Ricky", last_name: "P", username: "Johak98", url: "wo1.jpg")
user_m = User.create!(email: "test13@email.com", password: "123456", first_name: "Ronya", last_name: "U", username: "Johak58", url: "wo5.jpg")


# Generate the test categories
category_1 = Category.create!(name: "Walking", url: "https://images.unsplash.com/photo-1491438590914-bc09fcaaf77a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", url_small:"https://images.unsplash.com/photo-1476459216969-94c7100f88a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
category_2 = Category.create!(name: "Fika", url: "https://images.unsplash.com/photo-1475552113915-6fcb52652ba2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", url_small:"https://images.unsplash.com/photo-1509042239860-f550ce710b93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
category_3 = Category.create!(name: "Sports", url: "https://images.unsplash.com/photo-1527634311077-9943f7df34e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", url_small:"https://images.unsplash.com/photo-1534255355456-2d8e6930c5e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

# Generate a number of test activities for the 28th june
activity_post_1 = ActivityPost.create!(description: "I plan to take a walk to the pier and back again", start_time: "2019-06-28 12:45", duration: 15, capacity: 10, title: "Walk and not talk", category_id: category_1.id , user_id: user_a.id, location: "Sockerbruket")
activity_post_2 = ActivityPost.create!(description: "Lets do some power walking!", start_time: "2019-06-28 11:00", duration: 20, capacity: 10, title: "Talk and walk", category_id: category_1.id , user_id: user_i.id)
activity_post_3 = ActivityPost.create!(description: "How about a walk around the IKEA building", start_time: "2019-06-28 14:40", duration: 30, capacity: 5, title: "Walk and talk", category_id: category_1.id , user_id: user_j.id ,location: "Sockerbruket")
activity_post_4 = ActivityPost.create!(description: "Anyone want to go to the beach?", start_time: "2019-06-28 12:30", duration: 10, capacity: 5, title: "Walk and talk", category_id: category_1.id , user_id: user_b.id)

activity_post_5 = ActivityPost.create!(description: "I want to have a fika and talk about the news", start_time: "2019-06-28 10:30", duration: 30, capacity: 2, title: "Just fika", category_id: category_2.id , user_id: user_g.id)
activity_post_6 = ActivityPost.create!(description: "Kanelbulle? Ja tack!", start_time: "2019-06-28 12:30", duration: 45, capacity: 40, title: "Fika for the many", category_id: category_2.id , user_id: user_b.id)
activity_post_7 = ActivityPost.create!(description: "I want to fika and voice my idea for a new app..", start_time: "2019-06-28 13:45", duration: 10, capacity: 2, title: "Fika and debate?", category_id: category_2.id , user_id: user_d.id, location: "Sockerbruket" )

activity_post_8 = ActivityPost.create!(description: "Do you dare to face me?", start_time: "2019-06-28 11:00", duration: 180, capacity: 2, title: "Chess Match", category_id: category_3.id , user_id: user_e.id)
activity_post_9 = ActivityPost.create!(description: "We need one more for a Padel match..", start_time: "2019-06-28 15:00", duration: 60, capacity: 4, title: "Padel", category_id: category_3.id , user_id: user_k.id)
activity_post_10 = ActivityPost.create!(description: "Come along and take a refreshing dip!", start_time: "2019-06-28 11:15", duration: 30, capacity: 2, title: "Swimming", category_id: category_3.id , user_id: user_b.id, location: "Sockerbruket")
activity_post_11 = ActivityPost.create!(description: "Join us for a early lunch run, everyone can join! ", start_time: "2019-06-28 10:15", duration: 45, capacity: 10, title: "Running", category_id: category_3.id , user_id: user_e.id)
activity_post_12 = ActivityPost.create!(description: "Service Desk vs Everybody", start_time: "2019-06-28 10:00", duration: 90, capacity: 22, title: "Football", category_id: category_3.id , user_id: user_g.id, location: "Älmhult")

# Generate a number of bookings for walking
booking_1 = ActivityUser.create!(user_id: user_m.id, activity_post_id: activity_post_1.id)
booking_5 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_1.id)
booking_9 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_1.id)
booking_13 = ActivityUser.create!(user_id: user_d.id, activity_post_id: activity_post_1.id)
booking_14 = ActivityUser.create!(user_id: user_e.id, activity_post_id: activity_post_1.id)
booking_15 = ActivityUser.create!(user_id: user_f.id, activity_post_id: activity_post_1.id)
booking_16 = ActivityUser.create!(user_id: user_g.id, activity_post_id: activity_post_1.id)
booking_2 = ActivityUser.create!(user_id: user_h.id, activity_post_id: activity_post_2.id)
booking_6 = ActivityUser.create!(user_id: user_j.id, activity_post_id: activity_post_2.id)
booking_10 = ActivityUser.create!(user_id: user_k.id, activity_post_id: activity_post_2.id)
booking_3 = ActivityUser.create!(user_id: user_l.id, activity_post_id: activity_post_3.id)
booking_7 = ActivityUser.create!(user_id: user_m.id, activity_post_id: activity_post_3.id)
booking_11 = ActivityUser.create!(user_id: user_m.id, activity_post_id: activity_post_3.id)
booking_8 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_4.id)
booking_4 = ActivityUser.create!(user_id: user_l.id, activity_post_id: activity_post_4.id)
booking_12 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_4.id)


# Generate a number of bookings for walking
booking_20 = ActivityUser.create!(user_id: user_g.id, activity_post_id: activity_post_5.id)
booking_21 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_6.id)
booking_22 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_6.id)
booking_23 = ActivityUser.create!(user_id: user_d.id, activity_post_id: activity_post_6.id)
booking_24 = ActivityUser.create!(user_id: user_e.id, activity_post_id: activity_post_6.id)
booking_25 = ActivityUser.create!(user_id: user_f.id, activity_post_id: activity_post_6.id)
booking_26 = ActivityUser.create!(user_id: user_g.id, activity_post_id: activity_post_6.id)
booking_27 = ActivityUser.create!(user_id: user_k.id, activity_post_id: activity_post_6.id)
booking_28 = ActivityUser.create!(user_id: user_l.id, activity_post_id: activity_post_6.id)
booking_29 = ActivityUser.create!(user_id: user_d.id, activity_post_id: activity_post_7.id)

# Generate a number of bookings for walking
booking_30 = ActivityUser.create!(user_id: user_e.id, activity_post_id: activity_post_8.id)
booking_31 = ActivityUser.create!(user_id: user_k.id, activity_post_id: activity_post_9.id)
booking_32 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_9.id)
booking_33 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_9.id)
booking_34 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_10.id)
booking_35 = ActivityUser.create!(user_id: user_d.id, activity_post_id: activity_post_10.id)
booking_36 = ActivityUser.create!(user_id: user_e.id, activity_post_id: activity_post_11.id)
booking_37 = ActivityUser.create!(user_id: user_f.id, activity_post_id: activity_post_11.id)
booking_38 = ActivityUser.create!(user_id: user_g.id, activity_post_id: activity_post_11.id)
booking_39 = ActivityUser.create!(user_id: user_k.id, activity_post_id: activity_post_11.id)
booking_40 = ActivityUser.create!(user_id: user_g.id, activity_post_id: activity_post_12.id)
booking_41 = ActivityUser.create!(user_id: user_j.id, activity_post_id: activity_post_12.id)
booking_42 = ActivityUser.create!(user_id: user_k.id, activity_post_id: activity_post_12.id)
booking_43 = ActivityUser.create!(user_id: user_l.id, activity_post_id: activity_post_12.id)
booking_44 = ActivityUser.create!(user_id: user_m.id, activity_post_id: activity_post_12.id)
booking_45 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_12.id)
booking_46 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_12.id)
booking_47 = ActivityUser.create!(user_id: user_d.id, activity_post_id: activity_post_12.id)
booking_48 = ActivityUser.create!(user_id: user_e.id, activity_post_id: activity_post_12.id)
booking_49 = ActivityUser.create!(user_id: user_f.id, activity_post_id: activity_post_12.id)

# Generate a number of test activities for the 29th june

activity_post_14 = ActivityPost.create!(description: "Training for marathon, need a running buddy! ", start_time: "2019-06-29 15:50", duration: 45, capacity: 10, title: "Running", category_id: category_3.id , user_id: user_e.id)
activity_post_15 = ActivityPost.create!(description: "Bring your pick-nick and enjoy a game of cricket", start_time: "2019-06-29 09:00", duration: 270, capacity: 22, title: "Cricket match", category_id: category_3.id , user_id: user_j.id, location: "Älmhult")






booking_50 = ActivityUser.create!(user_id: user_e.id, activity_post_id: activity_post_14.id)

booking_50 = ActivityUser.create!(user_id: user_j.id, activity_post_id: activity_post_15.id)
booking_51 = ActivityUser.create!(user_id: user_g.id, activity_post_id: activity_post_15.id)
booking_52 = ActivityUser.create!(user_id: user_k.id, activity_post_id: activity_post_15.id)
booking_53 = ActivityUser.create!(user_id: user_l.id, activity_post_id: activity_post_15.id)
booking_54 = ActivityUser.create!(user_id: user_m.id, activity_post_id: activity_post_15.id)
booking_55 = ActivityUser.create!(user_id: user_b.id, activity_post_id: activity_post_15.id)
booking_56 = ActivityUser.create!(user_id: user_c.id, activity_post_id: activity_post_15.id)
booking_57 = ActivityUser.create!(user_id: user_d.id, activity_post_id: activity_post_15.id)
booking_58 = ActivityUser.create!(user_id: user_e.id, activity_post_id: activity_post_15.id)
booking_59 = ActivityUser.create!(user_id: user_f.id, activity_post_id: activity_post_15.id)
