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

u1 = User.create!(email: "marnie@marnie.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Marnie', last_name: 'The First', years_of_exp: 1, location: 'Berlin', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/300x300')
u2 = User.create!(email: "yuno@yuno.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Yuno', last_name: 'The Second', years_of_exp: 2, location: 'Berlin', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/300x300')
u3 = User.create!(email: "laura@laura.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Laura', last_name: 'The Third', years_of_exp: 4, location: 'Hamburg', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/300x300')
u4 = User.create!(email: "martin@martin.com", password: 'password', password_confirmation: 'password', created_at: "2011-05-25 12:25:45", updated_at: "2021-05-25 12:28:10", first_name: 'Martin', last_name: 'The Forth', years_of_exp: 5, location: 'Cologne', avatar: 'https://source.unsplash.com/X6Uj51n5CE8/300x300')

l1 = Lesson.create(description: 'Let me teach you any dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.', name: 'Best Teacher in Town', price: 250, user: u1)
l2 = Lesson.create(description: 'Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages.', name: 'Best Lesson Ever', price: 150, user: u2)
l3 = Lesson.create(description: 'Book now a introduction in Python- Python is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented and functional programming. ', name: 'Cheapest Lesson', price: 50, user: u2)
l4 = Lesson.create(description: 'Lets dive into Javascript. JavaScript is high-level, often just-in-time compiled, and multi-paradigm.', name: 'Quality Offering', price: 350, user: u3)
l5 = Lesson.create(description: 'Let me introduce Css. CSS is designed to enable the separation of presentation and content, including layout, colors, and fonts.', name: 'A short Lesson', price: 150, user: u4)
l6 = Lesson.create(description: 'I can help you with anything SQL related. SQL offers two main advantages over older read–write APIs such as ISAM or VSAM', name: 'Exclusive for the advanced', price: 550, user: u4)
l7 = Lesson.create(description: 'Profound lesson in Turbo Pascal. Turbo Pascal is a software development system that includes a compiler and an integrated development environment (IDE) for the Pascal programming language running on CP/M, CP/M-86, and DOS.', name: 'A really great lesson', price: 350, user: u4)

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
Review.create(rating: 5, comment: 'Thanks so much for your help, couldnt have done it without you. Looking forwarf to the next session', booking: b2)
Review.create(rating: 4, comment: 'This was an extremely good experience for me. I was intimidated by the online experience but it felt like an in person class!', booking: b3)
Review.create(rating: 2, comment: 'Overall I would rate my experience with this teacher okayish. However I still have some gaps that needs to be filled in another lesson .', booking: b4)
Review.create(rating: 5, comment: 'It was very informative and I got to learn the basic which was enough to get me off and going. The instructor was friendly, clear, patient and answered all of my questions.', booking: b5)
Review.create(rating: 4, comment: 'I really learned a lot and developed my video editing skills professionally in so many ways. Would definitely recommend.!', booking: b6)
Review.create(rating: 3, comment: 'Truly an amazing experience. Being in the Software Engineering Immersive course, I gained real world experience that eventually lead me to a full time tech career. I am very happy with the outcome!', booking: b7)
Review.create(rating: 4, comment: 'Great Teacher, learned a lot', booking: b8)
Review.create(rating: 5, comment: 'Finally I understand how the coding works thanks to this amazing teacher!', booking: b9)
Review.create(rating: 2, comment: 'Good experience, but the teacher was a bit distracted', booking: b2)
Review.create(rating: 1, comment: 'Friendly teacher, however, I still had a lot of questions the teacher didnt answer', booking: b4)
Review.create(rating: 4, comment: 'Very professionally and funny lession', booking: b6)
Review.create(rating: 5, comment: 'Greate Time mate, thanks again, loved it', booking: b9)
Review.create(rating: 5, comment: 'Now I really understand how it works ', booking: b5)
Review.create(rating: 3, comment: 'I will dev book you again!', booking: b7)
