
# ------- Seeder ----------------

puts 'Cleaning current database initiated...'
sleep(1.5)
puts '...'
puts '(1/6) Destroying current availabilities...'
availabilities = Availability.count
Availability.destroy_all
sleep(1)
puts '(2/6) Destroying current viewings...'
viewings = Viewing.count
Viewing.destroy_all
sleep(1)
puts '(3/6) Destroying current meetings...'
meetings = Meeting.count
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
sleep(2)
puts '...'
puts "Success! #{availabilities} availabilities, #{viewings} viewings, #{meetings} meetings, #{attendances} attendances, #{users} users and #{events} event(s) have irreversibly been deleted from the database!"
puts '...'
puts 'Seeding new database initiated...'
sleep(2)
puts '...'
puts '(1/6) Creating new events...'

event1 = Event.new(
    name: "START Summit 2020",
    date: "20-03-2020",
    address: "St. Gallen, Schweiz",
    organizer_name: "START Global",
    organizer_address: "Dufourstrasse 50, 9000 St. Gallen, Schweiz",
    organizer_url: "http://www.startstgallen.startglobal.org/",
    meeting_spots: "Coffee Area 1, Coffee Area 2, VIP Area")
  event1.save!
  sleep(1)

puts '(2/6) Creating new users...'

url1 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/lakestar_wpylzc.png"
investor1 = User.new(
    kind: "investor",
    first_time: false,
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
    stages: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    remote_photo_url: url1,
    admin: true)
  investor1.save!

url2 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/index_y8mbom.png"
investor2 = User.new(
    kind: "investor",
    first_time: false,
    email: "diana@index-ventures.com",
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
    stages: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    remote_photo_url: url2)
  investor2.save!

url3 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/benchmark_wbymyl.png"
investor3 = User.new(
    kind: "investor",
    first_time: false,
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
    stages: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    remote_photo_url: url3)
  investor3.save!

url4 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/creandum_ztlxox.png"
investor4 = User.new(
    kind: "investor",
    first_time: false,
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
    stages: "Pre-Seed, Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    remote_photo_url: url4)
  investor4.save!

url5 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/holtzbrinck_fvnssk.png"
investor5 = User.new(
    kind: "investor",
    first_time: false,
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
    stages: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    remote_photo_url: url5)
  investor5.save!

url6 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005970/partechh_dfehn4.png"
investor6 = User.new(
    kind: "investor",
    first_time: false,
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
    stages: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    remote_photo_url: url6)
  investor6.save!

url7 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/greylock_yzk0js.png"
investor7 = User.new(
    kind: "investor",
    first_time: false,
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
    stages: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: false, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "closed beta, public beta, publicly launched",
    remote_photo_url: url7)
  investor7.save!

url8 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/bessemer_tadg9g.png"
investor8 = User.new(
    kind: "investor",
    first_time: false,
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
    stages: "Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
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
    sectors: "Food, AgTech, FinTech",
    ticket_size_min: "150000",
    ticket_size_max: "6000000",
    stages: "Seed, Series A, Series B",
    selling_to: "B2C, B2B",
    generating_revenue: false, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
    remote_photo_url: url9)
  investor9.save!

url10 = "https://res.cloudinary.com/dkrolafpx/image/upload/v1567005969/gfc_p6chqg.png"
investor10 = User.new(
    kind: "investor",
    first_time: false,
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
    stages: "Seed, Series A, Series B, Later",
    selling_to: "B2C, B2B",
    generating_revenue: true, # Is revenue an investment requirement? Here: "Yes"
    profitable: false, # Is profitability an investment requirement? Here: "Yes"
    launch_status: "no MVP, closed beta, public beta, publicly launched",
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
    firm_description: "GetYourGuide is the place to book the best experiences in destinations across the globe. Since 2009, we’ve made it easy for millions of travelers to find unique and unmissable things to do wherever their travels take them. By connecting people to activities and attractions they love, we create trips full of meaningful memories. All of this is brought together in one easy-to-use website and app that makes planning and booking simple so travelers can focus on what counts: having an incredible time. Backed by leading venture capital investors, GetYourGuide has raised over $650 million in funding to date and has over 500 employees spread across 16 offices worldwide. See our open positions (careers.getyourguide.com) or get a behind-the-scenes look of life at GetYourGuide on our blog ()inside.getyourguide.com).",
    company_founding_year: 2009,
    launch_status: "publicly launched",
    sectors: "TravelTech, ConsumerTech",
    stages: "Pre-seed",
    selling_to: "B2C",
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
    firm_description: "lHelloFresh is on a mission to change the way people eat, forever!  As the world's leading meal kit provider, we serve more than 13 million meals per month to over 1.3 million customers in 10 countries across 3 continents. Yep, we’re that good. HelloFresh supplies everything you need to prepare quality, delicious, home-cooked meals that require no planning, no shopping and no hassle. Every ingredient needed for our thousands of exclusive recipes is carefully planned, locally sourced and delivered to your door when it’s most convenient for you.  Making dinner an experience - not just another meal - takes a lot of work and smart people. From Data Scientists to DevOps Engineers, to potato farmers, and the men and women who ensure every box is perfectly crafted for every customer, we’re collectively disrupting the food supply chain and the multi-trillion-dollar food tech industry. Our offices in Berlin, New York City, Sydney, Toronto, London, Amsterdam and Zurich are filled with more than 2,500 diverse, high-performing and international talents. We’re always looking for a few missing ingredients to perfect our recipe, so join us now and become part of the HelloFresh movement! Check out available opportunities across the globe here: https://www.hellofresh.com/careers/locations",
    company_founding_year: "2011",
    launch_status: "public beta",
    sectors: "FoodTech, Food, ConsumerTech",
    stages: "Series B",
    selling_to: "B2C",
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
    firm_description: "Personio ist ein schnell wachsendes HR SaaS Startup: Wir bieten eine ganzheitliche Softwarelösung für Personalverwaltung und Bewerbermanagement, die für Unternehmen mit einer Größe von 10 bis 1000 Angestellten konzipiert wurde. Schon heute spielt Personio eine entscheidende Rolle, den alltäglichen operativen Betrieb von mehr als 1200 HR Teams effizienter und transparenter zu gestalten.",
    company_founding_year: "2015",
    launch_status: "closed beta",
    sectors: "HRTech, SaaS",
    stages: "Series A",
    selling_to: "B2B",
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
    firm_description: "LifeX is your landing pad for the big moves in life. We get you settled in your new city with end-to-end relocation services, including a flexible housing subscription in a community of like-minded, events to meet new people and help with all the practicalities of moving.",
    company_founding_year: "2017",
    launch_status: "no MVP",
    sectors: "LivingTech, ConsumerTech, SaaS, PropTech",
    stages: "Seed",
    selling_to: "B2C",
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
    firm_description: "Our mission: We free travelers from wasting time & money on travel planning ever again. We believe the future of travel is not search & compare but a delightful conversation to instantly create personalized trips that match your unique style & personal preferences. That’s why we’ve built an interface-agnostic conversation engine powered by advanced statistics & deep learning methods to decode your travel intent faster & better than anyone else. The purpose? To magically deliver perfectly tailored travel experiences instantly to your inbox. Free, transparent & bookable.",
    company_founding_year: "2016",
    launch_status: "closed beta",
    sectors: "TravelTech, ConsumerTech",
    stages: "Series B",
    selling_to: "B2C",
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
    firm_description: "McMakler ist ein in Deutschland, Österreich und Frankreich aktiver Full-Service Immobiliendienstleister und kombiniert modernste, digitale Analyse-, Vermarktungs- und Kommunikationstechnologien mit der persönlichen Beratung seiner Kunden durch eigene Makler vor Ort. Das Unternehmen hat sich in den letzten Jahren zu einer bekannten und etablierten Marke entwickelt und übernimmt als einer der schnellst wachsenden Immobilienmakler Deutschlands die Vorreiterrolle im Proptech-Segment. McMakler ist ein junges, technologieaffines, mittelständisches Unternehmen mit inzwischen 550 internationalen Mitarbeitern, davon 300 eigene Makler, die in Regionalvertretungen in über 100 Städten und Ballungszentren unsere Kunden im Verkauf und in der Vermietung direkt vor Ort beraten und begleiten. Ein Großteil der Mitarbeiter arbeitet im Berliner Headquarter. Die zentralisierten Abteilungen, wie Kundenservice, Vertrieb, IT, Marketing und Verwaltung, sowie eigens entwickelte Softwarelösungen und Datenbanken im Akquise- und Vermittlungsprozess können viele Arbeitsschritte des Tagesgeschäfts schneller und professioneller als traditionelle Maklerbetrieben umsetzen und reduzieren zugleich die Kosten für Kunden und das Unternehmen.",
    company_founding_year: "2015",
    launch_status: "publicly launched",
    sectors: "PropTech, ConsumerTech, AI",
    stages: "Series B",
    selling_to: "B2C, B2B",
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
    firm_description: "HomeToGo - a company built around the idea of finding the ideal accommodation for every trip. Since its founding just five years ago, HomeToGo has localized websites in 21 countries and quickly become the world’s largest vacation rental search engine- now representing big-name brands like CASAMUNDO & Tripping. With over 16 million vacation rental offers worldwide, from more than 600 travel websites like Airbnb, booking.com, HomeAway, TripAdvisor (and more), we make finding and booking a vacation rental easier than ever.",
    company_founding_year: "2014",
    launch_status: "public beta",
    sectors: "TravelTech, ConsumerTech, Blockchain",
    stages: "Series A",
    selling_to: "B2C",
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
    firm_description: "N26 ist die mobile Bank. N26 hat Banking für das Smartphone neu gestaltet – einfach, transparent und frei von versteckten Gebühren. Valentin Stalf and Maximilian Tayenthal gründeten das Unternehmen im Jahr 2013 and brachten N26 Anfang 2015 offiziell auf den Markt​. Dank des rein digitalen Geschäftsmodells operiert N26 zu deutlich geringeren Kosten und mit einer schlanken Organisationsstruktur – ohne veraltete IT Systeme und ohne ein teures Filialnetzwerk. Diese Kostenvorteile gibt N26 an ihre Kunden weiter. ​N26 kooperiert mit den innovativsten Fintechs und traditionellen Anbietern, um ihren Kunden die besten Produkte zu bieten. Partner sind u.a. TransferWise (Fremdwährungsüberweisungen), WeltSparen (Sparen), Clark und Allianz (Versicherungen) und auxmoney (Verbraucherkredit). Heute zählt N26 zu den schnellst wachsenden Banken in Europa, hat über 2,5 Millionen Kunden in 25 Ländern und mehr als 700 Mitarbeiter. N26 hat insgesamt USD 215 Millionen von weltweit renommierten Investoren eingesammelt, darunter Allianz X, Tencent Holdings Limited, Li Ka-Shings Horizons Ventures, Peter Thiels Valar Ventures, Mitglieder des Zalando Managements und Earlybird Venture Capital.",
    company_founding_year: "2014",
    launch_status: "closed beta",
    sectors: "FinTech, AI, Blockchain, ConsumerTech",
    stages: "Later",
    selling_to: "B2C",
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
    firm_description: "Wir liefern innerhalb von 120 Minuten die Getränke zu unseren Kunden - und das bis an die Wohnungstür. Gemeinsam mit über 1.500 Kollegen schaffen wir es, eine komplette Branche neu zu erfinden und liefern mittlerweile über 30.000 Bestellungen pro Woche in neun Städten aus. Seit dem Jahr 2016 sind wir unaufhaltsam dabei, ganz Deutschland zu erschließen. Wir suchen entschlossene Visionäre, um gemeinsam die Erfolgsgeschichte der flaschenpost fortzuführen. Du möchtest Teil dieses Teams werden und unsere Expansion in andere Städte mit vorantreiben? Dann schau jetzt vorbei auf www.wirsindflaschenpost.de.",
    company_founding_year: "2016",
    launch_status: "no MVP",
    sectors: "FoodTech, ConsumerTech",
    stages: "Series A",
    selling_to: "B2C, B2B",
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
    firm_description: "Ever since Delivery Hero SE started, we’ve been transforming the way people order food. With over 290,000 restaurant partners, Delivery Hero is one of the world’s leading online food ordering and delivery marketplaces. Our c. 19,000 employees all share one common goal: to always deliver an amazing experience. To achieve this goal, we’re working as one team across almost 30 brands in 39 countries – and we’re always striving to create, innovate and grow. Our headquarters are based in Berlin, with more than 1,000 Heroes from over 80 nationalities. Become a part of our success story and join our ambitious international team where you can make an impact in a fast-growing industry. In return, we offer a challenging and dynamic environment where you can grow and develop your career with the right support, every step of the way.",
    company_founding_year: "2008",
    launch_status: "publicly launched",
    sectors: "Food, FoodTech, ConsumerTech",
    stages: "Later",
    selling_to: "B2C",
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
    investor: investor1,
    startup: startup1,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Waiting")
  meeting1.save!

meeting2 = Meeting.new(
    investor: investor2,
    startup: startup2,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Waiting")
  meeting2.save!

meeting3 = Meeting.new(
    investor: investor3,
    startup: startup3,
    event: event1,
    agreed_timeslot: nil,
    matching_status: "Waiting")
  meeting3.save!

meeting4 = Meeting.new(
    investor: investor4,
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
    investor: investor7,
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
    investor: investor9,
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
puts "Success! #{Availability.count} availabilities, #{Viewing.count} viewings, #{Meeting.count} meetings, #{Attendance.count} attendances, #{User.count} users and #{Event.count} event(s) have successfully been added to your database!"
puts "------------------ Finished! Enjoy testing. ------------------"
