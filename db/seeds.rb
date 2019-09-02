
# ------- Seeder ----------------
Viewing.destroy_all
puts 'Cleaning current database initiated...'
puts '...'
puts '(1/6) Destroying current availabilities...'
availabilities = Availability.count
Availability.destroy_all

# puts '(2/6) Destroying current viewings...'
# viewings = Viewing.count
# Viewing.destroy_all

puts '(3/6) Destroying current meetings...'
meetings = Meeting.count
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

puts '...'
puts "Success! #{availabilities} availabilities, #{meetings} meetings, #{attendances} attendances, #{users} users and #{events} event(s) have irreversibly been deleted from the database!"
puts '...'
puts 'Seeding new database initiated...'

puts '...'
puts '(1/6) Creating new events...'

event1 = Event.new(
    name: "START Summit 2020",
    date: "20-03-2020",
    address: "St. Gallen, Schweiz",
    organizer_name: "START Global",
    organizer_address: "Dufourstrasse 50, 9000 St. Gallen, Schweiz",
    organizer_url: "http://www.startsummit.ch/",
    meeting_spots: "Coffee Area 1, Coffee Area 2, VIP Area")
  event1.save!


puts '(2/6) Creating new users...'

url1 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/lakestar_wpylzc.png"
investor1 = User.new(
    kind: "investor",
    first_time: false,
    email: "klaus@example.com",
    password: "123456",
    first_name: "Klaus",
    last_name: "Hommels",
    mobile: "015678240008",
    company_name: "Lakestar",
    position: "General Partner",
    company_city: "London, United Kingdom",
    sectors: ["Mobility", "Food", "Finance"],
    ticket_size_min: "100000",
    ticket_size_max: "3000000",
    stages: ["Seed", "Series A", "Series B", "Later Stage"],
    selling_to: ["B2C", "B2B"],
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP", "closed beta", "public beta", "publicly launched"],
    remote_photo_url: url1,
    admin: true)
  investor1.save!

url2 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/index_y8mbom.png"
investor2 = User.new(
    kind: "investor",
    first_time: false,
    email: "diana@example.com",
    password: "123456",
    first_name: "Diana",
    last_name: "von Fürstenberg",
    mobile: "015678540008",
    company_name: "Index Ventures",
    position: "General Partner",
    company_city: "London, United Kingdom",
    sectors: ["Productivity Software", "Crypto", "Food"],
    ticket_size_min: "100000",
    ticket_size_max: "10000000",
    stages: ["Seed", "Series A", "Series B", "Later Stage"],
    selling_to: ["B2C", "B2B"],
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP", "closed beta", "public beta", "publicly launched"],
    remote_photo_url: url2)
  investor2.save!

url3 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/benchmark_wbymyl.png"
investor3 = User.new(
    kind: "investor",
    first_time: false,
    email: "timo@example.com",
    password: "123456",
    first_name: "Timo",
    last_name: "Heidenstrauch",
    mobile: "015678240808",
    company_name: "Benchmark Capital",
    position: "Managing Partner",
    company_city: "Menlow Park, USA",
    sectors: ["Mobility", "Food", "Travel", "Finance", "Logistics"],
    ticket_size_min: "100000",
    ticket_size_max: "1000000",
    stages: ["Seed", "Series A", "Series B", "Later Stage"],
    selling_to: ["B2C", "B2B"],
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP", "closed beta", "public beta", "publicly launched"],
    remote_photo_url: url3)
  investor3.save!

url4 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/creandum_ztlxox.png"
investor4 = User.new(
    kind: "investor",
    first_time: false,
    email: "simon@example.com",
    password: "123456",
    first_name: "Simon",
    last_name: "Schmincke",
    mobile: "015672240008",
    company_name: "Creandum",
    position: "Partner",
    company_city: "Berlin, Germany",
    sectors: ["Mobility", "Travel", "Food", "Crypto", "Retail/D2C"],
    ticket_size_min: "100000",
    ticket_size_max: "6000000",
    stages: ["Pre-Seed", "Seed", "Series A", "Series B", "Later Stage"],
    selling_to: ["B2C", "B2B"],
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP", "closed beta", "public beta", "publicly launched"],
    remote_photo_url: url4)
  investor4.save!

url5 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/holtzbrinck_fvnssk.png"
investor5 = User.new(
    kind: "investor",
    first_time: false,
    email: "dieter@example.com",
    password: "123456",
    first_name: "Dieter",
    last_name: "von Heisen",
    mobile: "015978240008",
    company_name: "Holtzbrinck Ventures",
    position: "Investment Manager",
    company_city: "Munich, Germany",
    sectors: ["Mobility", "Health & Life Sciences", "Education", "Real Estate"],
    ticket_size_min: "50000",
    ticket_size_max: "20000000",
    stages: ["Seed", "Series A", "Series B", "Later Stage"],
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP", "closed beta", "public beta", "publicly launched"],
    remote_photo_url: url5)
  investor5.save!

url6 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/partechh_dfehn4.png"
investor6 = User.new(
    kind: "investor",
    first_time: false,
    email: "kerstin@example.com",
    password: "123456",
    first_name: "Kerstin",
    last_name: "Theissen",
    mobile: "015278240008",
    company_name: "Partech Ventures",
    position: "Principal",
    company_city: "Paris, France",
    sectors: ["Mobility", "Productivity Software", "Finance", "Insurance"],
    ticket_size_min: "100000",
    ticket_size_max: "5000000",
    stages: ["Seed", "Series A", "Series B", "Later Stage"],
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP", "closed beta", "public beta", "publicly launched"],
    remote_photo_url: url6)
  investor6.save!

url7 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/greylock_yzk0js.png"
investor7 = User.new(
    kind: "investor",
    first_time: false,
    email: "john@example.com",
    password: "123456",
    first_name: "John",
    last_name: "Simson",
    mobile: "015678240008",
    company_name: "Greylock",
    position: "General Partner",
    company_city: "San Francisco, USA",
    sectors: ["Mobility", "Food", "Finance", "Insurance", "Productivity Software", "Finance"],
    ticket_size_min: "500000",
    ticket_size_max: "20000000",
    stages: ["Seed", "Series A", "Series B", "Later Stage"],
    selling_to: "B2C, B2B",
    generating_revenue: false, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["closed beta", "public beta", "publicly launched"],
    remote_photo_url: url7)
  investor7.save!

url8 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/bessemer_tadg9g.png"
investor8 = User.new(
    kind: "investor",
    first_time: false,
    email: "alan@example.com",
    password: "123456",
    first_name: "Jennifer",
    last_name: "Forchester",
    mobile: "015578240008",
    company_name: "Bessemer Ventures",
    position: "General Partner",
    company_city: "London, United Kingdom",
    sectors: ["Mobility", "Food", "Health & Life Sciences", "Finance"],
    ticket_size_min: "250000",
    ticket_size_max: "8000000",
    stages: ["Series A", "Series B", "Later Stage"],
    selling_to: ["B2C", "B2B"],
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP", "closed beta", "public beta", "publicly launched"],
    remote_photo_url: url8)
  investor8.save!

url9 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/cherry_jtmt9f.png"
investor9 = User.new(
    kind: "investor",
    first_time: false,
    email: "christian@cherry.com",
    password: "123456",
    first_name: "Christian",
    last_name: "Meermann",
    mobile: "015578240008",
    company_name: "Cherry Ventures",
    position: "Managing Partner",
    company_city: "Berlin, Germany",
    sectors: ["Food", "Travel", "Retail/D2C", "Media", "Logistics", "Real Estate"],
    ticket_size_min: "150000",
    ticket_size_max: "6000000",
    stages: ["Seed", "Series A", "Series B"],
    selling_to: ["B2C", "B2B"],
    generating_revenue: false, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP", "closed beta", "public beta", "publicly launched"],
    remote_photo_url: url9)
  investor9.save!

url10 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/gfc_p6chqg.png"
investor10 = User.new(
    kind: "investor",
    first_time: false,
    email: "marc@example.com",
    password: "123456",
    first_name: "Marc",
    last_name: "Samwer",
    mobile: "015678240008",
    company_name: "Global Founders Fund",
    position: "General Partner",
    company_city: "Berlin, Germany",
    sectors: ["Mobility", "Food", "Telecommunication", "Productivity Software", "Media", "Real Estate", "Finance"],
    ticket_size_min: "200000",
    ticket_size_max: "3000000",
    stages: ["Seed", "Series A", "Series B", "Later Stage"],
    selling_to: ["B2C", "B2B"],
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: ["pre-MVP, closed beta, public beta, publicly launched"],
    remote_photo_url: url10)
  investor10.save!

url11 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567072794/lw-ventures-logo_lhy2qj.png"
investor11 = User.new(
    kind: "investor",
    first_time: true,
    email: "dominik@lw-ventures.com",
    password: "123456",
    first_name: "Dominik",
    last_name: "Wojciechowski",
    company_name: "LeWagon Ventures",
    position: "Managing Partner",
    remote_photo_url: url10)
  investor11.save!

url11 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/getyourguide_fjsxpb.png"
startup1 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup1@getyourguide.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "Co-Founder",
    company_city: "Berlin, Germany",
    company_url: "www.getyourguide.com",
    firm_description: "GetYourGuide operates an online platform for booking tours, attractions and activities worldwide.",
    company_founding_year: 2009,
    launch_status: ["publicly launched"],
    sectors: ["Travel"],
    stages: ["Pre-Seed"],
    selling_to: ["B2C"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false, # Is the company profitable? Here: "Yes"
    remote_photo_url: url11)
  startup1.save!

url12 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/hellofresh_crwz6g.png"
startup2 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup2@hellofresh.com",
    password: "123456",
    first_name: "Dominik",
    last_name: "Richter",
    mobile: "015578240008",
    company_name: "HelloFresh",
    position: "Founder",
    company_city: "Berlin, Germany",
    company_url: "www.hellofresh.com",
    firm_description: "HelloFresh is a food subscription company that sends pre-portioned ingredients to users’ doorstep each week.",
    company_founding_year: "2011",
    launch_status: ["public beta"],
    sectors: ["Food", "Retail/D2C"],
    stages: ["Series B"],
    selling_to: ["B2C"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: true, # Is the company profitable? Here: "Yes"
    remote_photo_url: url12)
  startup2.save!

url13 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/personio_nz51ku.png"
startup3 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup3@personio.com",
    password: "123456",
    first_name: "Hanno",
    last_name: "Renner",
    mobile: "015678244008",
    company_name: "Personio",
    position: "Co-Founder & Managing Director",
    company_city: "Berlin, Germany",
    company_url: "www.personio.com",
    firm_description: "Personio offers a holistic HR management and recruiting solution for Startups and SMEs.",
    company_founding_year: "2015",
    launch_status: ["closed beta"],
    sectors: ["Productivity Software"],
    stages: ["Series A"],
    selling_to: ["B2B"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false, # Is the company profitable? Here: "Yes"
    remote_photo_url: url13)
  startup3.save!

url14 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/lifex_plzbui.png"
startup4 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup4@lifex.com",
    password: "123456",
    first_name: "Gregory",
    last_name: "Lime",
    mobile: "017678240008",
    company_name: "LifeX",
    position: "Founder",
    company_city: "Copenhagen, Denmark",
    company_url: "www.joinlifex.com",
    firm_description: "LifeX Aps is a co-living startup in Copenhagen and Berlin.",
    company_founding_year: "2017",
    launch_status: ["pre-MVP"],
    sectors: ["Real Estate"],
    stages: ["Seed"],
    selling_to: ["B2C"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false, # Is the company profitable? Here: "Yes"
    remote_photo_url: url14)
  startup4.save!

url15 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/fineway_dcc3o9.png"
startup5 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup5@fineaway.com",
    password: "123456",
    first_name: "Maria",
    last_name: "Thormann",
    mobile: "014678240008",
    company_name: "Fineaway",
    position: "Managing Director",
    company_city: "Hamburg, Germany",
    company_url: "www.joinlifex.com/",
    firm_description: "Fineway makes free instant trip planning for everyone.",
    company_founding_year: "2016",
    launch_status: ["closed beta"],
    sectors: ["Travel"],
    stages: ["Series B"],
    selling_to: ["B2C"],
    generating_revenue: false, # Does the company generate revenue? Here: "Yes"
    profitable: false, # Is the company profitable? Here: "Yes"
    remote_photo_url: url15)
  startup5.save!

url16 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/mcmakler_pdipce.jpg"
startup6 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup6@mcmakler.com",
    password: "123456",
    first_name: "Felix",
    last_name: "Jahn",
    mobile: "015678240788",
    company_name: "McMakler",
    position: "Founder",
    company_city: "Berlin, Germany",
    company_url: "www.mcmakler.com",
    firm_description: "McMakler is a real estate agency that uses a fixed pricing model and combining the traditional service with web-based technology.",
    company_founding_year: "2015",
    launch_status: ["publicly launched"],
    sectors: ["Real Estate"],
    stages: ["Series B"],
    selling_to: ["B2C, B2B"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false, # Is the company profitable? Here: "Yes"
    remote_photo_url: url16)
  startup6.save!

url17 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/hometogo_rsmhan.png"
startup7 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup7@hometogo.com",
    password: "123456",
    first_name: "Dirk",
    last_name: "Lorchester",
    mobile: "015678240008",
    company_name: "HomeToGo",
    position: "Chief Marketing Officer",
    company_city: "Düsseldorf, Germany",
    company_url: "www.hometogo.com",
    firm_description: "HomeToGo is a vacation rental search engine.",
    company_founding_year: "2014",
    launch_status: ["public beta"],
    sectors: ["Travel"],
    stages: ["Series A"],
    selling_to: ["B2C"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: true, # Is the company profitable? Here: "Yes"
    remote_photo_url: url17)
  startup7.save!

url18 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/n26_ymfmyl.jpg"
startup8 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup8@n26.com",
    password: "123456",
    first_name: "Maximilian",
    last_name: "Tayenthal",
    mobile: "015688240008",
    company_name: "N26",
    position: "Co-Founder & CFO",
    company_city: "Berlin, Germany",
    company_url: "www.n26.com",
    firm_description: "N26 is a mobile bank helps customers manage their bank accounts through smartphones.",
    company_founding_year: "2014",
    launch_status: ["closed beta"],
    sectors: ["Finance"],
    stages: ["Later Stage"],
    selling_to: ["B2C"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false, # Is the company profitable? Here: "Yes"
    remote_photo_url: url18)
  startup8.save!

url19 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/flaschenpost_vqugto.jpg"
startup9 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup9@flaschenpost.com",
    password: "123456",
    first_name: "Niklas",
    last_name: "Mayer",
    mobile: "012678240008",
    company_name: "Flaschenpost",
    position: "Chief Operating Officer",
    company_city: "Münster, Germany",
    company_url: "www.wirsindflaschenpost.de",
    firm_description: "Flaschenpost offers on-demand beverage deliveries.",
    company_founding_year: "2016",
    launch_status: ["pre-MVP"],
    sectors: ["Food", "Logistics"],
    stages: ["Series A"],
    selling_to: ["B2C", "B2B"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false, # Is the company profitable? Here: "Yes"
    remote_photo_url: url19)
  startup9.save!

url20 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/delivery-hero_hbefxy.png"
startup10 = User.new(
    kind: "startup",
    first_time: false,
    email: "startup1@delivery-hero.com",
    password: "123456",
    first_name: "Lukasz",
    last_name: "Gadowski",
    mobile: "015607824008",
    company_name: "Delivery-Hero",
    position: "Founder",
    company_city: "Berlin, Germany",
    company_url: "www.delivery-hero.com",
    firm_description: "Delivery Hero is a network of online food ordering sites with over 100 restaurant partners worldwide.",
    company_founding_year: "2008",
    launch_status: ["publicly launched"],
    sectors: ["Food", "Logistics"],
    stages: ["Later Stage"],
    selling_to: ["B2C"],
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: true, # Is the company profitable? Here: "Yes"
    remote_photo_url: url20)
  startup10.save!

puts '(3/6) Creating new attendances...'

attendance1 = Attendance.new(
    user: startup1,
    event: event1)
  attendance1.save!

attendance2 = Attendance.new(
    user: startup2,
    event: event1)
  attendance2.save!

attendance3 = Attendance.new(
    user: startup3,
    event: event1)
  attendance3.save!

attendance4 = Attendance.new(
    user: startup4,
    event: event1)
  attendance4.save!

attendance5 = Attendance.new(
    user: startup5,
    event: event1)
  attendance5.save!

attendance6 = Attendance.new(
    user: startup6,
    event: event1)
  attendance6.save!

attendance7 = Attendance.new(
    user: startup7,
    event: event1)
  attendance7.save!

attendance8 = Attendance.new(
    user: startup8,
    event: event1)
  attendance8.save!

attendance9 = Attendance.new(
    user: startup9,
    event: event1)
  attendance9.save!

attendance10 = Attendance.new(
    user: startup10,
    event: event1)
  attendance10.save!

attendance11 = Attendance.new(
    user: investor1,
    event: event1)
  attendance11.save!

attendance12 = Attendance.new(
    user: investor2,
    event: event1)
  attendance12.save!

attendance13 = Attendance.new(
    user: investor3,
    event: event1)
  attendance13.save!

attendance14 = Attendance.new(
    user: investor4,
    event: event1)
  attendance14.save!

attendance15 = Attendance.new(
    user: investor5,
    event: event1)
  attendance15.save!

attendance16 = Attendance.new(
    user: investor6,
    event: event1)
  attendance16.save!

attendance17 = Attendance.new(
    user: investor7,
    event: event1)
  attendance17.save!

attendance18 = Attendance.new(
    user: investor8,
    event: event1)
  attendance18.save!

attendance19 = Attendance.new(
    user: investor9,
    event: event1)
  attendance19.save!

attendance20 = Attendance.new(
    user: investor10,
    event: event1)
  attendance20.save!

puts '(4/6) Creating new meetings...'

meeting1 = Meeting.new(
    investor: investor11,
    startup: startup1,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Matched")
  meeting1.save!

meeting2 = Meeting.new(
    investor: investor11,
    startup: startup2,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Matched")
  meeting2.save!

meeting3 = Meeting.new(
    investor: investor3,
    startup: startup3,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Matched")
  meeting3.save!

meeting4 = Meeting.new(
    investor: investor11,
    startup: startup4,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Matched")
  meeting4.save!

meeting5 = Meeting.new(
    investor: investor5,
    startup: startup5,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Matched")
  meeting5.save!

meeting6 = Meeting.new(
    investor: investor6,
    startup: startup6,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Matched")
  meeting6.save!

meeting7 = Meeting.new(
    investor: investor11,
    startup: startup7,
    event: event1,
    agreed_timeslot: "08:00",
    matching_status: "Scheduled")
  meeting7.save!

meeting8 = Meeting.new(
    investor: investor7,
    startup: startup8,
    event: event1,
    agreed_timeslot: "09:00",
    matching_status: "Scheduled")
  meeting8.save!

meeting9 = Meeting.new(
    investor: investor11,
    startup: startup9,
    event: event1,
    agreed_timeslot: "16:00",
    matching_status: "Scheduled")
  meeting9.save!

puts '(5/6) Creating new viewings...'
puts 'not creating any right now'

# event1.attendances.joins(:user).where(users: { kind: 'startup' }).each do |attendance|
#   User.investors.all.each do |user|
#     Viewing.create!(user: user, attendance: attendance, like: nil)
#   end
# end

# event1.attendances.joins(:user).where(users: { kind: 'investor' }).each do |attendance|
#   User.startups.all.each do |user|
#     Viewing.create!(user: user, attendance: attendance, like: nil)
#   end
# end

puts '(6/6) Creating new availabilities...'

time_start = DateTime.parse('20rd Mar 2020 08:00:00+00:00')
time_end = DateTime.parse('20rd Mar 2020 16:00:00+00:00')
event1.attendances.joins(:user).each do |attendance|
  Availability.create!(attendance: attendance, start_time: time_start.strftime("%I:%M%p"), end_time: time_end.strftime("%I:%M%p") , slot_taken: [true, false].sample)
end
puts '...'
puts "Success! #{Availability.count} availabilities,  #{Meeting.count} meetings, #{Attendance.count} attendances, #{User.count} users and #{Event.count} event(s) have successfully been added to your database!"
puts "------------------ Finished! Enjoy testing. ------------------"
