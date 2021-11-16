# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'date'

Appointment.destroy_all
Offer.destroy_all

# Creates 10 offers
Offer.create(user: User.find_by(first_name: "Julius"), subject: "German", level: "Beginner", price: 15, description: "I teach German")
Offer.create(user: User.find_by(first_name: "Julius"), subject: "Physics", level: "Advanced", price: 35, description: "I teach Physics")
Offer.create(user: User.find_by(first_name: "Julius"), subject: "Chemistry", level: "Intermediate", price: 25, description: "I teach Chemistry")
Offer.create(user: User.find_by(first_name: "Julius"), subject: "Mathematics", level: "Intermediate", price: 25, description: "I teach Mathematics")
Offer.create(user: User.find_by(first_name: "Julius"), subject: "English", level: "Advanced", price: 30, description: "I teach English")
Offer.create(user: User.find_by(first_name: "Alexander"), subject: "French", level: "Beginner", price: 20, description: "I teach French")
Offer.create(user: User.find_by(first_name: "Alexander"), subject: "Spanish", level: "Beginner", price: 20, description: "I teach Spanish")
Offer.create(user: User.find_by(first_name: "Alexander"), subject: "Geography", level: "Advanced", price: 25, description: "I teach Geography")
Offer.create(user: User.find_by(first_name: "Alexander"), subject: "History", level: "Advanced", price: 28, description: "I teach History")
Offer.create(user: User.find_by(first_name: "Alexander"), subject: "Sports", level: "Intermediate", price: 22, description: "I teach German")

# Creates 20 appointments
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "German"), start_time: DateTime.new(2021,11,18,2,0,0), end_time: DateTime.new(2021,11,18,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "German"), start_time: DateTime.new(2021,11,19,2,0,0), end_time: DateTime.new(2021,11,19,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "Physics"), start_time: DateTime.new(2021,11,20,2,0,0), end_time: DateTime.new(2021,11,20,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "Physics"), start_time: DateTime.new(2021,11,21,2,0,0), end_time: DateTime.new(2021,11,21,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "Chemistry"), start_time: DateTime.new(2021,11,22,2,0,0), end_time: DateTime.new(2021,11,22,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "Chemistry"), start_time: DateTime.new(2021,11,23,2,0,0), end_time: DateTime.new(2021,11,23,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "Mathematics"), start_time: DateTime.new(2021,11,24,2,0,0), end_time: DateTime.new(2021,11,24,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "Mathematics"), start_time: DateTime.new(2021,11,25,2,0,0), end_time: DateTime.new(2021,11,25,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "English"), start_time: DateTime.new(2021,11,26,2,0,0), end_time: DateTime.new(2021,11,26,3,0,0))
Appointment.create(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "English"), start_time: DateTime.new(2021,11,27,2,0,0), end_time: DateTime.new(2021,11,27,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "French"), start_time: DateTime.new(2021,11,28,2,0,0), end_time: DateTime.new(2021,11,28,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "French"), start_time: DateTime.new(2021,11,29,2,0,0), end_time: DateTime.new(2021,11,29,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "Spanish"), start_time: DateTime.new(2021,11,30,2,0,0), end_time: DateTime.new(2021,11,30,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "Spanish"), start_time: DateTime.new(2021,12,1,2,0,0), end_time: DateTime.new(2021,12,1,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "Geography"), start_time: DateTime.new(2021,12,2,2,0,0), end_time: DateTime.new(2021,11,2,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "Geography"), start_time: DateTime.new(2021,12,3,2,0,0), end_time: DateTime.new(2021,11,3,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "History"), start_time: DateTime.new(2021,12,4,2,0,0), end_time: DateTime.new(2021,11,4,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "History"), start_time: DateTime.new(2021,12,5,2,0,0), end_time: DateTime.new(2021,11,5,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "Sports"), start_time: DateTime.new(2021,12,6,2,0,0), end_time: DateTime.new(2021,11,6,3,0,0))
Appointment.create(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "Sports"), start_time: DateTime.new(2021,12,7,2,0,0), end_time: DateTime.new(2021,11,7,3,0,0))
