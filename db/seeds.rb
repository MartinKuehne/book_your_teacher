# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "marnie@marnie.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Marnie', last_name: 'The First', years_of_exp: 1, location: 'Berlin', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/500x300')
User.create!(email: "yuno@yuno.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Yuno', last_name: 'The Second', years_of_exp: 2, location: 'Berlin', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/500x300')
User.create!(email: "laura@laura.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Laura', last_name: 'The Third', years_of_exp: 4, location: 'Hamburg', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/500x300')
User.create!(email: "martin@martin.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Martin', last_name: 'The Forth', years_of_exp: 5, location: 'Cologne', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/500x300')

Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Best Teacher in Town', price: 250, user_id: 1)
Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Best Lesson Ever', price: 150, user_id: 2)
Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Cheapest Lesson', price: 50, user_id: 2)
Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Quality Offering', price: 350, user_id: 3)
Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'A short Lesson', price: 150, user_id: 4)
Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Exclusive for the advanced', price: 550, user_id: 4)
Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'A really great lesson', price: 350, user_id: 4)

Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user_id: 1, lesson_id: 4)
Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user_id: 2, lesson_id: 3)
Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user_id: 2, lesson_id: 3)
Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user_id: 3, lesson_id: 2)
Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user_id: 3, lesson_id: 2)
Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user_id: 4, lesson_id: 1)