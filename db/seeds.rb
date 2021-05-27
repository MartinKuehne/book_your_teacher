# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.delete_all
Lesson.delete_all
UserLanguage.delete_all
User.delete_all
Language.delete_all
Review.delete_all

u1 = User.create!(email: "marnie@marnie.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Marnie', last_name: 'The First', years_of_exp: 1, location: 'Berlin', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/500x300')
u2 = User.create!(email: "yuno@yuno.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Yuno', last_name: 'The Second', years_of_exp: 2, location: 'Berlin', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/500x300')
u3 = User.create!(email: "laura@laura.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Laura', last_name: 'The Third', years_of_exp: 4, location: 'Hamburg', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/500x300')
u4 = User.create!(email: "martin@martin.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Martin', last_name: 'The Forth', years_of_exp: 5, location: 'Cologne', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/500x300')

l1 = Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Best Teacher in Town', price: 250, user: u1)
l2 = Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Best Lesson Ever', price: 150, user: u2)
l3 = Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Cheapest Lesson', price: 50, user: u2)
l4 = Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Quality Offering', price: 350, user: u3)
l5 = Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'A short Lesson', price: 150, user: u4)
l6 = Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'Exclusive for the advanced', price: 550, user: u4)
l7 = Lesson.create(description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea', name: 'A really great lesson', price: 350, user: u4)

b1 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u1, lesson: l4)
b2 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u1, lesson: l3)
b3 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u2, lesson: l3)
b4 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u3, lesson: l2)
b5 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u3, lesson: l2)
b6 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u4, lesson: l1)
b7 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u3, lesson: l5)
b8 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u2, lesson: l5)
b9 = Booking.create(start_time: '2021-11-19T08:37:48+00:00', end_time: '2021-11-20T08:37:48+00:00', user: u2, lesson: l6)

la1 = Language.create!(name: 'Ruby')
la2 = Language.create(name: 'Ruby on Rails')
la3 = Language.create(name: 'HTML')
la4 = Language.create(name: 'CSS')
la5 = Language.create(name: 'Javascript')
la6 = Language.create(name: 'SQL')
la7 = Language.create(name: 'PostgreSQL')
la8 = Language.create(name: 'Esperanto')

UserLanguage.create(user: u1, language: la1)
UserLanguage.create(user: u1, language: la2)
UserLanguage.create(user: u2, language: la1)
UserLanguage.create(user: u2, language: la2)
UserLanguage.create(user: u3, language: la1)
UserLanguage.create(user: u3, language: la2)
UserLanguage.create(user: u3, language: la3)
UserLanguage.create(user: u4, language: la1)
UserLanguage.create(user: u4, language: la2)
UserLanguage.create(user: u4, language: la3)
UserLanguage.create(user: u4, language: la4)
UserLanguage.create(user: u4, language: la5)
UserLanguage.create(user: u4, language: la6)
UserLanguage.create(user: u4, language: la7)

Review.create(rating: 3, comment: 'Very interesting session, liked it!', booking: b1)
Review.create(rating: 5, comment: 'Very interesting session, liked it!', booking: b2)
Review.create(rating: 4, comment: 'Very interesting session, liked it!', booking: b3)
Review.create(rating: 2, comment: 'Very interesting session, liked it!', booking: b4)
Review.create(rating: 5, comment: 'Very interesting session, liked it!', booking: b5)
Review.create(rating: 4, comment: 'Very interesting session, liked it!', booking: b6)
Review.create(rating: 3, comment: 'Very interesting session, liked it!', booking: b7)
Review.create(rating: 4, comment: 'Very interesting session, liked it!', booking: b8)
Review.create(rating: 5, comment: 'Very interesting session, liked it!', booking: b9)
Review.create(rating: 2, comment: 'Very interesting session, liked it!', booking: b2)
Review.create(rating: 1, comment: 'Very interesting session, liked it!', booking: b4)
Review.create(rating: 4, comment: 'Very interesting session, liked it!', booking: b6)
Review.create(rating: 5, comment: 'Very interesting session, liked it!', booking: b9)
Review.create(rating: 5, comment: 'Very interesting session, liked it!', booking: b5)
Review.create(rating: 3, comment: 'Very interesting session, liked it!', booking: b7)