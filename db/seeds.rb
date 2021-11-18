# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or! created alongside the database with db:setup).
#
require 'date'

start_time = Time.now
puts "Destroying all data..."
# destroy appointments, offers and users
Appointment.destroy_all
Offer.destroy_all
User.destroy_all

puts "Creating users..."
first_names = %w[Anette Birgit Christopher David Eric Felix George Harry Isabel James Katie Linda Matthew Noah Olivia Peter Quentin Rita Susan Tom Ursula Victoria William Xaver Yasmin Zoe]
last_names = %w[Harrell Duke Cantu Fletcher Pearson Robinson Munoz Richmond Hernandez Conway Snyder Hernandez King Vazquez Bond Sutton Jennings Lee Hughes Garcia Johnson Mitchell Coleman Crawford Woods Johnson]
users = []
first_names.each do |name|
  users << User.create!(email: "#{name.downcase}@gmail.com", password: "123456", password_confirmation: "123456", first_name: name, last_name: last_names.sample)
end

names = [%w[Alexander Meurer], %w[Daniel Schuster], %w[Julius Lang], %w[Sebastian Pfeufer]]
names.each do |name|
  User.create!(email: "#{name[0]}@gmail.com", password: "123456", password_confirmation: "123456", first_name: name[0], last_name: name[1])
end

subjects = %w[chemistry english german history mathematics physics]
levels = %w[beginner intermediate advanced]
greetings = ["Welcome", "Hi", "Hello", "Hey", "Hey there"]
intros = ["I am", "my name is", "it's me,"]

puts "Creating offers and appointments..."
booked = 0
past_booked = 0
# iterate through each subject
subjects.each do |subject|
  puts "...for '#{subject}'"
  # iterate through each level
  levels.each do |level|
    # iterate through 10 random users and make them offer providers
    users.sample(10).each do |provider|
      price = 10 * (levels.index(level) + 1)
      name = [provider.first_name.to_s, "#{provider.first_name} #{provider.last_name}"].sample
      description = "#{greetings.sample}, #{intros.sample} #{name} and I teach #{subject}."
      offer = Offer.create!(user: provider, subject: subject, level: level, price: price, description: description)

      duration = [30.minutes, 45.minutes, 60.minutes, 90.minutes].sample
      appointments = []

      # create 5 appointments per provider
      5.times do
        date_time = rand(1..10).days.from_now.beginning_of_hour
        appointment = Appointment.create!(user: nil, start_time: date_time, end_time: date_time + duration, offer: offer)
        appointments << appointment
        # 0.3 chance that appointment is booked
        if rand < 0.3
          appointment.update!(user: users.reject { |a_user| a_user == offer.user }.sample)
          booked += 1
          # 0.3 chance that appointment is in the past
          if rand < 0.3
            date_time = rand(-10..-1).days.from_now.beginning_of_hour
            appointment.update!(start_time: date_time, end_time: date_time + duration)
            past_booked += 1
          end
        end
      end
    end
  end
end

end_time = Time.now
diff = (end_time - start_time).round(2)
puts "Finished in #{diff} seconds!"
puts "Created #{User.count} users, #{Offer.count} offers and #{Appointment.count} (#{Appointment.where(user_id: nil).count} free / #{booked} booked / #{past_booked} past booked) appointments"
