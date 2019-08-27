# ------- Seeder 1 ----------------
# Seeding:
#  - Users 10 Investoren
#  - Users 10 Startups
#  - Event 1
#  - Viewings (Every Investor likes between 4-5 Startups)
#  - Viewings (Every Startup likes all fitting investors)
#  - Meetings (Results from the viewing statusses)
#    - 30%: Waiting
#    - 30%: Matched
#    - 40%: Scheduled
#  - Availabilities
#    - Everyone is available from 9 - 12 and from 13-17
#      (in slots und außer an den in meetings festgelegten agreed_dates)
#  - Attendances:
#    - All users go to the one event (20 entries)


puts 'Cleaning current database initiated...'

puts '(1/6) Destroying current availabilities...'
availabilities = Availability.count
Availability.destroy_all
puts '(2/6) Destroying current viewings...'
viewings = Viewing.count
Viewing.destroy_all
puts '(3/6) Destroying current meetings...'
meeetings = Meeting.count
Meeting.destroy_all
puts '(4/6) Destroying current attendances...'
attendances = Attendance.count
Attendance.destroy_all
puts '(5/6) Destroying current users...'
users = User.count
User.destroy_all
puts '(6/6) Destroying current events...'
events = Event.count
Event.destroy_all
puts "Success! #{availabilities} availabilities, #{viewings} viewings, #{meetings} meetings,#{attendances} attendances, #{users} users and #{events} events have irreversibly been deleted from the database!"

puts 'Seeding new database initiated...'

puts '(1/6) Creating new events...'

event1 = Event.new(
    name: "START Summit 2020",
    date: "20-03-2020",
    address: "St. Gallen, Schweiz",
    organizer_name: "START Global",
    organizer_address: "Dufourstrasse 50, 9000 St. Gallen, Schweiz",
    organizer_url: "http://www.startstgallen.startglobal.org/")
  event1.save!

puts '(2/6) Creating new users...'

investor1 = User.new(
    type: "investor",
    first_name: "Klaus",
    last_name: "Hommels",
    mobile: "015678240008",
    company_name: "Lakestar",
    position: "General Partner"
    company_city: "London, United Kingdom",
    sectors: "Mobility, Food, FinTech",
    ticket_size_min: "100000",
    ticket_size_max: "3000000",
    stage: "Seed, Series All, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor1.save!

investor2 = User.new(
    first_name: "Dominik",
    last_name: "Wojciechowsk",
    email: "dominik.wojciechowski@gmail.com",
    password: "123456")
  investor2.save!

investor3 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  investor3.save!

investor4 = User.new(
    first_name: "Simone",
    last_name: "Hoffmann",
    email: "simone.hoffmann@gmail.com",
    password: "123456")
  investor4.save!

investor5 = User.new(
    first_name: "Dominik",
    last_name: "Wojciechowsk",
    email: "dominik.wojciechowski@gmail.com",
    password: "123456")
  investor5.save!

investor6 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  investor6.save!

investor7 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  investor7.save!

investor8 = User.new(
    first_name: "Dominik",
    last_name: "Wojciechowsk",
    email: "dominik.wojciechowski@gmail.com",
    password: "123456")
  investor8.save!

investor9 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  investor9.save!

investor10 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  investor10.save!

startup1 = User.new(
    first_name: "Simone",
    last_name: "Hoffmann",
    email: "simone.hoffmann@gmail.com",
    password: "123456")
  startup1.save!

startup2 = User.new(
    first_name: "Dominik",
    last_name: "Wojciechowsk",
    email: "dominik.wojciechowski@gmail.com",
    password: "123456")
  startup2.save!

startup3 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  user3.save!

startup4 = User.new(
    first_name: "Simone",
    last_name: "Hoffmann",
    email: "simone.hoffmann@gmail.com",
    password: "123456")
  startup4.save!

startup5 = User.new(
    first_name: "Dominik",
    last_name: "Wojciechowsk",
    email: "dominik.wojciechowski@gmail.com",
    password: "123456")
  startup5.save!

startup6 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  startup6.save!

startup7 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  startup7.save!

startup8 = User.new(
    first_name: "Dominik",
    last_name: "Wojciechowsk",
    email: "dominik.wojciechowski@gmail.com",
    password: "123456")
  startup8.save!

startup9 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  startup9.save!

startup10 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  startup10.save!

puts '(3/6) Creating new attendances...'

attendance1 = Attendance.new(
    user: startup1,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup2,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup3,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup4,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup5,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup6,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup7,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup8,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup9,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: startup10,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor1,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor2,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor3,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor4,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor5,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor6,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor7,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor8,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor9,
    event: event1)
  attendance1.save!

attendance1 = Attendance.new(
    user: investor10,
    event: event1)
  attendance1.save!

puts '(4/6) Creating new meetings...'

puts '(5/6) Creating new viewings...'

puts '(6/6) Creating new availabilities...'

