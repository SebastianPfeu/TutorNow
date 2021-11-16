# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or! created alongside the database with db:setup).
#
require 'date'

Appointment.destroy_all
Offer.destroy_all

# Creates 10 offers
Offer.create!(user: User.find_by(first_name: "Julius"), subject: "german", level: "beginner", price: 15, description: "I teach German")
Offer.create!(user: User.find_by(first_name: "Julius"), subject: "physics", level: "advanced", price: 35, description: "I teach Physics")
Offer.create!(user: User.find_by(first_name: "Julius"), subject: "chemistry", level: "intermediate", price: 25, description: "I teach Chemistry")
Offer.create!(user: User.find_by(first_name: "Julius"), subject: "mathematics", level: "intermediate", price: 25, description: "I teach Mathematics")
Offer.create!(user: User.find_by(first_name: "Julius"), subject: "english", level: "advanced", price: 30, description: "I teach English")
Offer.create!(user: User.find_by(first_name: "Alexander"), subject: "french", level: "beginner", price: 20, description: "I teach French")
Offer.create!(user: User.find_by(first_name: "Alexander"), subject: "spanish", level: "beginner", price: 20, description: "I teach Spanish")
Offer.create!(user: User.find_by(first_name: "Alexander"), subject: "geography", level: "advanced", price: 25, description: "I teach Geography")
Offer.create!(user: User.find_by(first_name: "Alexander"), subject: "history", level: "advanced", price: 28, description: "I teach History")
Offer.create!(user: User.find_by(first_name: "Alexander"), subject: "sports", level: "intermediate", price: 22, description: "I teach German")

#! Creates 20 appointments
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "german"), start_time: DateTime.new(2021,11,18,2,0,0), end_time: DateTime.new(2021,11,18,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "german"), start_time: DateTime.new(2021,11,19,2,0,0), end_time: DateTime.new(2021,11,19,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "physics"), start_time: DateTime.new(2021,11,20,2,0,0), end_time: DateTime.new(2021,11,20,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "physics"), start_time: DateTime.new(2021,11,21,2,0,0), end_time: DateTime.new(2021,11,21,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "chemistry"), start_time: DateTime.new(2021,11,22,2,0,0), end_time: DateTime.new(2021,11,22,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "chemistry"), start_time: DateTime.new(2021,11,23,2,0,0), end_time: DateTime.new(2021,11,23,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "mathematics"), start_time: DateTime.new(2021,11,24,2,0,0), end_time: DateTime.new(2021,11,24,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "mathematics"), start_time: DateTime.new(2021,11,25,2,0,0), end_time: DateTime.new(2021,11,25,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "english"), start_time: DateTime.new(2021,11,26,2,0,0), end_time: DateTime.new(2021,11,26,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Ursula"), offer: Offer.find_by(subject: "english"), start_time: DateTime.new(2021,11,27,2,0,0), end_time: DateTime.new(2021,11,27,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "french"), start_time: DateTime.new(2021,11,28,2,0,0), end_time: DateTime.new(2021,11,28,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "french"), start_time: DateTime.new(2021,11,29,2,0,0), end_time: DateTime.new(2021,11,29,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "spanish"), start_time: DateTime.new(2021,11,30,2,0,0), end_time: DateTime.new(2021,11,30,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "spanish"), start_time: DateTime.new(2021,12,1,2,0,0), end_time: DateTime.new(2021,12,1,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "geography"), start_time: DateTime.new(2021,12,2,2,0,0), end_time: DateTime.new(2021,11,2,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "geography"), start_time: DateTime.new(2021,12,3,2,0,0), end_time: DateTime.new(2021,11,3,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "history"), start_time: DateTime.new(2021,12,4,2,0,0), end_time: DateTime.new(2021,11,4,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "history"), start_time: DateTime.new(2021,12,5,2,0,0), end_time: DateTime.new(2021,11,5,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "sports"), start_time: DateTime.new(2021,12,6,2,0,0), end_time: DateTime.new(2021,11,6,3,0,0))
Appointment.create!(user: User.find_by(first_name: "Anette"), offer: Offer.find_by(subject: "sports"), start_time: DateTime.new(2021,12,7,2,0,0), end_time: DateTime.new(2021,11,7,3,0,0))
