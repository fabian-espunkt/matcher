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
sleep(1)
puts '(2/6) Destroying current viewings...'
viewings = Viewing.count
Viewing.destroy_all
sleep(1)
puts '(3/6) Destroying current meetings...'
meeetings = Meeting.count
Meeting.destroy_all
sleep(1)
puts '(4/6) Destroying current attendances...'
attendances = Attendance.count
Attendance.destroy_all
sleep(1)
puts '(5/6) Destroying current users...'
users = User.count
User.destroy_all
sleep(1)
puts '(6/6) Destroying current events...'
events = Event.count
Event.destroy_all
sleep(1)
puts "Success! #{availabilities} availabilities, #{viewings} viewings, #{meetings} meetings,#{attendances} attendances, #{users} users and #{events} events have irreversibly been deleted from the database!"

puts 'Seeding new database initiated...'
sleep(2)

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
    email: "klaus@lakestar.com",
    password: "123456",
    first_name: "Klaus",
    last_name: "Hommels",
    mobile: "015678240008",
    company_name: "Lakestar",
    position: "General Partner",
    company_city: "London, United Kingdom",
    sectors: "Mobility, Food, FinTech",
    ticket_size_min: "100000",
    ticket_size_max: "3000000",
    stage: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor1.save!

investor2 = User.new(
    type: "investor",
    email: "diana@index-venturesd.com",
    password: "123456",
    first_name: "Diana",
    last_name: "von Fürstenberg",
    mobile: "015678540008",
    company_name: "Index Ventures",
    position: "General Partner",
    company_city: "London, United Kingdom",
    sectors: "HRTech, Blockchain, Food",
    ticket_size_min: "100000",
    ticket_size_max: "10000000",
    stage: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor2.save!

investor3 = User.new(
    type: "investor",
    email: "timo@benchmark.com",
    password: "123456",
    first_name: "Timo",
    last_name: "Heidenstrauch",
    mobile: "015678240808",
    company_name: "Benchmark Capital",
    position: "Managing Partner",
    company_city: "Menlow Park, USA",
    sectors: "Mobility, Food, FinTech, AI",
    ticket_size_min: "100000",
    ticket_size_max: "1000000",
    stage: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor3.save!

investor4 = User.new(
    type: "investor",
    email: "simon@creandum.com",
    password: "123456",
    first_name: "Simon",
    last_name: "Schmincke",
    mobile: "015672240008",
    company_name: "Creandum",
    position: "Partner",
    company_city: "Berlin, Germany",
    sectors: "Mobility, ConsumerTech, Food, Blockchain",
    ticket_size_min: "100000",
    ticket_size_max: "6000000",
    stage: "Pre-Seed, Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor4.save!

investor5 = User.new(
    type: "investor",
    email: "Dieter@holtzbrinck.com",
    password: "123456",
    first_name: "Dieter",
    last_name: "von Heisen",
    mobile: "015978240008",
    company_name: "Holtzbrinck Ventures",
    position: "Investment Manager",
    company_city: "Munich, Germany",
    sectors: "Mobility, HealthTech",
    ticket_size_min: "50000",
    ticket_size_max: "20000000",
    stage: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor5.save!

investor6 = User.new(
    type: "investor",
    email: "kerstin@partech.com",
    password: "123456",
    first_name: "Kerstin",
    last_name: "Theissen",
    mobile: "015278240008",
    company_name: "Partech Ventures",
    position: "Principal",
    company_city: "Paris, France",
    sectors: "Mobility, SaaS, FinTech, InsurTech",
    ticket_size_min: "100000",
    ticket_size_max: "5000000",
    stage: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor6.save!

investor7 = User.new(
    type: "investor",
    email: "john@greylock.com",
    password: "123456",
    first_name: "John",
    last_name: "Simson",
    mobile: "015678240008",
    company_name: "Greylock",
    position: "General Partner",
    company_city: "San Francisco, USA",
    sectors: "Mobility, Food, FinTech, InsurTech, HRTech, FinTech",
    ticket_size_min: "500000",
    ticket_size_max: "20000000",
    stage: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: false, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "closed beta, public beta, publicly launched")
  investor7.save!

investor8 = User.new(
    type: "investor",
    email: "alan@bessemer.com",
    password: "123456",
    first_name: "Jennifer",
    last_name: "Forchester",
    mobile: "015578240008",
    company_name: "Bessemer Ventures",
    position: "General Partner",
    company_city: "London, United Kingdom",
    sectors: "Mobility, Food, MedTech, FinTech",
    ticket_size_min: "250000",
    ticket_size_max: "8000000",
    stage: "Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor8.save!

investor9 = User.new(
    type: "investor",
    email: "christian@cherry.com",
    password: "123456",
    first_name: "Christian",
    last_name: "Meermann",
    mobile: "015578240008",
    company_name: "Cherry Ventures",
    position: "Managing Partner",
    company_city: "Berlin, Germany",
    sectors: "Food, AgTech, FinTech",
    ticket_size_min: "150000",
    ticket_size_max: "6000000",
    stage: "Seed, Series A, Series B",
    selling_to: "B2C, B2B",
    generating_revenue: false, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor9.save!

investor10 = User.new(
    type: "investor",
    email: "marc@gfc.com",
    password: "123456",
    first_name: "Marc",
    last_name: "Samwer",
    mobile: "015678240008",
    company_name: "Global Founders Fund",
    position: "General Partner",
    company_city: "Berlin, Germany",
    sectors: "Mobility, Food, AI, SaaS, Marketplace, FinTech",
    ticket_size_min: "200000",
    ticket_size_max: "3000000",
    stage: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched")
  investor10.save!

startup1 = User.new(
    type: "startup",
    email: "startup1@getyourguide.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "Co-Founder",
    company_city: "Berlin, Germany",
    company_url: "www.getyourguide.com",
    firm_description: "GetYourGuide is the place to book the best experiences in destinations across the globe. Since 2009, we’ve made it easy for millions of travelers to find unique and unmissable things to do wherever their travels take them. By connecting people to activities and attractions they love, we create trips full of meaningful memories. All of this is brought together in one easy-to-use website and app that makes planning and booking simple so travelers can focus on what counts: having an incredible time. Backed by leading venture capital investors, GetYourGuide has raised over $650 million in funding to date and has over 500 employees spread across 16 offices worldwide. See our open positions (careers.getyourguide.com) or get a behind-the-scenes look of life at GetYourGuide on our blog ()inside.getyourguide.com).",
    company_founding_year: 2009,
    launch_status: "publicly launched",
    sectors: "TravelTech, ConsumerTech",
    stage: "Pre-seed, Series A, Series B, Later",
    selling_to: "B2C",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
  startup1.save!

startup2 = User.new(
    type: "startup",
    email: "startup2@hellofresh.com",
    password: "123456",
    first_name: "Dominik",
    last_name: "Richter",
    mobile: "015578240008",
    company_name: "HelloFresh",
    position: "Founder",
    company_city: "Berlin, Germany",
    company_url: "www.hellofresh.com",
    firm_description: "lHelloFresh is on a mission to change the way people eat, forever!  As the world's leading meal kit provider, we serve more than 13 million meals per month to over 1.3 million customers in 10 countries across 3 continents. Yep, we’re that good. HelloFresh supplies everything you need to prepare quality, delicious, home-cooked meals that require no planning, no shopping and no hassle. Every ingredient needed for our thousands of exclusive recipes is carefully planned, locally sourced and delivered to your door when it’s most convenient for you.  Making dinner an experience - not just another meal - takes a lot of work and smart people. From Data Scientists to DevOps Engineers, to potato farmers, and the men and women who ensure every box is perfectly crafted for every customer, we’re collectively disrupting the food supply chain and the multi-trillion-dollar food tech industry. Our offices in Berlin, New York City, Sydney, Toronto, London, Amsterdam and Zurich are filled with more than 2,500 diverse, high-performing and international talents. We’re always looking for a few missing ingredients to perfect our recipe, so join us now and become part of the HelloFresh movement! Check out available opportunities across the globe here: https://www.hellofresh.com/careers/locations",
    company_founding_year: "2011",
    launch_status: "public beta",
    sectors: "FoodTech, Food, ConsumerTech",
    stage: "Series B",
    selling_to: "B2C",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: true) # Is the company profitable? Here: "Yes"
  startup2.save!

startup3 = User.new(
    type: "startup",
    email: "startup1@personio.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "General Partner",
    company_city: "Berlin, Germany",
    company_url: "X",
    firm_description: "lorem",
    company_founding_year: "this",
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    sectors: "x",
    stage: "x",
    selling_to: "x",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
  user3.save!

startup4 = User.new(
    type: "startup",
    email: "startup1@lifex.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "General Partner",
    company_city: "Berlin, Germany",
    company_url: "X",
    firm_description: "lorem",
    company_founding_year: "this",
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    sectors: "x",
    stage: "x",
    selling_to: "x",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
  startup4.save!

startup5 = User.new(
    type: "startup",
    email: "startup1@fineaway.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "General Partner",
    company_city: "Berlin, Germany",
    company_url: "X",
    firm_description: "lorem",
    company_founding_year: "this",
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    sectors: "x",
    stage: "x",
    selling_to: "x",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
  startup5.save!

startup6 = User.new(
    type: "startup",
    email: "startup1@mcmakler.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "General Partner",
    company_city: "Berlin, Germany",
    company_url: "X",
    firm_description: "lorem",
    company_founding_year: "this",
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    sectors: "x",
    stage: "x",
    selling_to: "x",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
  startup6.save!

startup7 = User.new(
    type: "startup",
    email: "startup1@hometogo.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "General Partner",
    company_city: "Berlin, Germany",
    company_url: "X",
    firm_description: "lorem",
    company_founding_year: "this",
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    sectors: "x",
    stage: "x",
    selling_to: "x",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
  startup7.save!

startup8 = User.new(
    type: "startup",
    email: "startup1@n26.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "General Partner",
    company_city: "Berlin, Germany",
    company_url: "X",
    firm_description: "lorem",
    company_founding_year: "this",
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    sectors: "x",
    stage: "x",
    selling_to: "x",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
  startup8.save!

startup9 = User.new(
    type: "startup",
    email: "startup1@flaschenpost.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "General Partner",
    company_city: "Berlin, Germany",
    company_url: "X",
    firm_description: "lorem",
    company_founding_year: "this",
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    sectors: "x",
    stage: "x",
    selling_to: "x",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
  startup9.save!

startup10 = User.new(
    type: "startup",
    email: "startup1@delivery-hero.com",
    password: "123456",
    first_name: "Hans",
    last_name: "Mühlenbein",
    mobile: "015678240008",
    company_name: "GetYourGuide",
    position: "General Partner",
    company_city: "Berlin, Germany",
    company_url: "X",
    firm_description: "lorem",
    company_founding_year: "this",
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    sectors: "x",
    stage: "x",
    selling_to: "x",
    generating_revenue: true, # Does the company generate revenue? Here: "Yes"
    profitable: false) # Is the company profitable? Here: "Yes"
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

