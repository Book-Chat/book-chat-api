# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

BookClubUser.destroy_all
BookClubSubject.destroy_all
UserBook.destroy_all
BookClubBook.destroy_all
Subject.destroy_all
Meeting.destroy_all
BookClub.destroy_all
Book.destroy_all
User.destroy_all

club_1 = BookClub.create!(name: "Lavar Burton's Readers")
club_2 = BookClub.create!(name: "Speculative and SciFi")
club_3 = BookClub.create!(name: "Just Cozies")
club_4 = BookClub.create!(name: "Mysteries and Monsters")
club_5 = BookClub.create!(name: "Here for the Characters")

user_1 = User.create!(email: "suzy@books.com", username: "suzyreads", first_name: "Suzy", last_name: "Sparkle", password: "password", password_confirmation: "password")
user_2 = User.create!(email: "james@books.com", username: "jamesj", first_name: "James", last_name: "Juniper", password: "password", password_confirmation: "password")
user_3 = User.create!(email: "wolfie@books.com", username: "wolfgang", first_name: "Wolfgang", last_name: "Hubbard", password: "password", password_confirmation: "password")
user_4 = User.create!(email: "maggie@books.com", username: "mags", first_name: "Magaret", last_name: "Loves PB", password: "password", password_confirmation: "password")
user_5 = User.create!(email: "momo@books.com", username: "Momo", first_name: "Momo", last_name: "Loves Ball", password: "password", password_confirmation: "password")

club_user_1 = BookClubUser.create!(user: user_1, book_club: club_1, role: 1)
club_user_2 = BookClubUser.create!(user: user_2, book_club: club_1, role: 0)
club_user_3 = BookClubUser.create!(user: user_3, book_club: club_1, role: 0)
club_user_4 = BookClubUser.create!(user: user_4, book_club: club_1, role: 2)
club_user_5 = BookClubUser.create!(user: user_1, book_club: club_2, role: 0)
club_user_6 = BookClubUser.create!(user: user_2, book_club: club_2, role: 1)
club_user_7 = BookClubUser.create!(user: user_5, book_club: club_2, role: 0)
club_user_8 = BookClubUser.create!(user: user_3, book_club: club_3, role: 1)
club_user_9 = BookClubUser.create!(user: user_4, book_club: club_4, role: 1)
club_user_10 = BookClubUser.create!(user: user_5, book_club: club_5, role: 1)
club_user_11 = BookClubUser.create!(user: user_4, book_club: club_3, role: 0)
club_user_12 = BookClubUser.create!(user: user_5, book_club: club_4, role: 2)
club_user_12 = BookClubUser.create!(user: user_3, book_club: club_5, role: 0)

subject_1 = Subject.create!(name: "Speculative Fiction", category: 0, description: "What will the future hold doomy stuff?")
subject_2 = Subject.create!(name: "Mystery", category: 0, description: "Who dunnit?")
subject_3 = Subject.create!(name: "LGBTQIA", category: 1, description: "This club is for LGBTQIA identifying folx.")
subject_4 = Subject.create!(name: "Cozy Mystery", category: 0, description: "Curl up with a blanket and don't stress about who dunnit.")
subject_5 = Subject.create!(name: "Celebrity Selections", category: 2, description: "These books were selected by celebs.")
subject_6 = Subject.create!(name: "Character Driven", category: 2, description: "This club is about books with magnificently written characters." )
subject_7 = Subject.create!(name: "Horror", category: 0, description: "Terrifyingly page turning.")
subject_8 = Subject.create!(name: "Monsters", category: 2, description: "Could be any genre, but there's always monsters.")
subject_9 = Subject.create!(name: "Science Fiction", category: 0, description: "It might have real science, but it's definitely got some fictional science.")

club_sub_1 = BookClubSubject.create!(book_club: club_1, subject: subject_5)
club_sub_2 = BookClubSubject.create!(book_club: club_1, subject: subject_6)
club_sub_3 = BookClubSubject.create!(book_club: club_2, subject: subject_1)
club_sub_4 = BookClubSubject.create!(book_club: club_2, subject: subject_9)
club_sub_5 = BookClubSubject.create!(book_club: club_3, subject: subject_4)
club_sub_6 = BookClubSubject.create!(book_club: club_4, subject: subject_2)
club_sub_7 = BookClubSubject.create!(book_club: club_4, subject: subject_7)
club_sub_8 = BookClubSubject.create!(book_club: club_4, subject: subject_8)
club_sub_9 = BookClubSubject.create!(book_club: club_5, subject: subject_6)

meeting_1 = Meeting.create!(book_club: club_1, location: "Park Hill Library", date_time: "2024-06-08 18:00:00")
meeting_2 = Meeting.create!(book_club: club_1, location: "Park Hill Library", date_time: "2024-07-08 18:00:00")
meeting_3 = Meeting.create!(book_club: club_1, location: "Park Hill Library", date_time: "2024-08-08 18:00:00")
meeting_4 = Meeting.create!(book_club: club_2, location: "Cheesman Park", date_time: "2024-07-10 12:00:00")
meeting_5 = Meeting.create!(book_club: club_2, location: "Cheesman Park", date_time: "2024-08-10 12:00:00")

book_1 = Book.create!(author: "Nana Kwame Adjei-Brenyah", title: "Chain Gang All Stars", google_id: "J07kEAAAQBAJ")
book_2 = Book.create!(author: "N. K. Jemisin", title: "The Fifth Season", google_id: "J0tIAgAAQBAJ")
book_3 = Book.create!(author: "Celeste Ng", title: "Little Fires Everywhere", google_id: "OsUPDgAAQBAJ")
book_4 = Book.create!(author: "Seth Grahame-Smith", title: "Pride and Prejudice and Zombies", google_id: "x5xPaPeZzmUC")
book_5 = Book.create!(author: "Andy Weir", title: "Project Hail Mary", google_id: "-Ff2DwAAQBAJ")

club_book_1 = BookClubBook.create!(book: book_1, book_club: club_1, meeting: meeting_1)
club_book_2 = BookClubBook.create!(book: book_3, book_club: club_1, meeting: meeting_2)
club_book_3 = BookClubBook.create!(book: book_2, book_club: club_2, meeting: meeting_4)
club_book_4 = BookClubBook.create!(book: book_4, book_club: club_2, meeting: meeting_5)
club_book_5 = BookClubBook.create!(book: book_5, book_club: club_1, meeting: meeting_3)




