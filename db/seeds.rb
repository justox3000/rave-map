require 'open-uri'

puts "Deleting the old Database..."

Attending.destroy_all
Comment.destroy_all
Party.destroy_all
User.destroy_all

url1 = File.open(Rails.root.join('db/images/electroniclove.png'))
url2 = File.open(Rails.root.join('db/images/rememberthefuture.jpg'))
url3 = File.open(Rails.root.join('db/images/pollerwiesenbootzwei.jpg'))
url4 = File.open(Rails.root.join('db/images/precey.png'))
url5 = File.open(Rails.root.join('db/images/tomtomclub.jpg'))

puts "Creating 5 random users..."

user1 = User.new(
  username: "testuser",
  email: "test@test.com",
  password: "testtest"
)
user1.save!

user2 = User.new(
  Faker::Internet.user
)

user3 = User.new(
  Faker::Internet.user
)

user4 = User.new(
  Faker::Internet.user
)

user5 = User.new(
  Faker::Internet.user
)

puts "Create 5 parties..."

party1 = Party.new(
  title: "electronic love feat. DJ MELL G (Juicy Gang)",
  music_genre: "Techno",
  location: "Helios 37",
  description: "✲ Electronic Love feat. DJ MELL G
  + Secret Oldschool Jungle 90s Rave Floor / 09.09.2022 / Helios 37

  ★ Lineup ★
  ◉ DJ MELL G (Juicy Gang)
  ◉ Isabelle Beaucamp (EhrenKlub I Rom)
  ◉ Tammo De Vries & Freddy Deckert (Morning Glory)

  ★ Secret Oldschool Jungle 90s Rave Floor:
  ◉ TBC

  ◉ Nach dem rauschenden Electronic Summer of Love Festival geht es etwas kleiner, aber nicht weniger exstatischer im Helios37 weiter.
  ◉ Sound by: 4 Punkt d&b V10 + J-SUBS (!) powered by D80
  ◉ 12€ + VVK * Kein Mindestverzehr
  ◉ Abendkasse: TBA

  Solltet ihr sexistisches, nationalistisches oder diskriminierendes Gedankengut in jedweder Form in euch tragen, so bitten wir euch, von unserem Rave fernzubleiben. Der Schutz von diskriminierungsfreien Räumen - dazu gehört auch unsere Veranstaltung - hat für uns oberste Priorität. ",
  date: "2022-09-09",
  start_time: "2022-09-09 23:00",
  address: "Heliosstraße 37, 50825 Köln"
)
party1.user = user1
party1.photo.attach(io: url1, filename: "p1.png", content_type: "image/png")
party1.save!

party2 = Party.new(
  title: "Remember the Future with Terr, Voltmar & Shumi",
  music_genre: "Techno",
  location: "Gewölbe",
  description: "Das Gewölbe ist klimatisiert. Gewölbe is fully air-conditioned.

  feel safe – feel free
  Das Gewölbe soll für alle Gäste ein geschützter Ort sein. Deshalb gilt ab sofort ein striktes Fotoverbot im gesamten Klub.
  Unabhängig von Herkunft, Geschlecht, sexueller Orientierung oder Religion erwarten wir von all unseren Gästen einen respektvollen Umgang miteinander. Homophobie, sexistisches oder rassistisches Verhalten sowie jegliche andere Form von Diskriminierung, Gewalt oder Beleidigungen haben im Gewölbe keinen Platz. Solltet ihr Zeug:innen von unangemessenem Verhalten werden oder selbst in eine unangenehme Lage kommen, wendet euch bitte jederzeit an unser Personal.
  Bei verlorengegangenen Gegenständen bitte eine Mail an lostandfound@gewoelbe.net schreiben",
  date: "2022-09-09",
  start_time: "2022-09-09 23:00",
  address: "Hans-Böckler-Platz 2, 50672 Köln"
)
party2.user = user1
party2.photo.attach(io: url2, filename: "p1.png", content_type: "image/png")
party2.save!

party3 = Party.new(
  title: "PollerWiesen Boot Zwei 2022",
  music_genre: "Techno",
  location: "MS Rheinenergie",
  description: "Join our unique 7h daytime cruise along the Rhine on the MS RheinEnergie, Europe`s biggest event-ship. Get lost in time and space with scenic wideness, captivating industry and the vastness of the summer sky...

  _

  Line up

  coming soon

  _

  Tickets

  Regular Ticket - 36,00
  Group Ticket [5 Pers.] - 165,00

  _

  Infos

  Sunday, September 11
  MS RheinEnergie - Konrad Adenauer Ufer 80 - 50668 Köln
  Boarding 11:45 / Departure 12:45 / Return 20:00
  Age 18+

  _
  ",
  date: "2022-09-11",
  start_time: "2022-09-11 11:45",
  address: "Rheinstraße, 50996 Köln, Germany"
)
party3.user = user2
party3.photo.attach(io: url3, filename: "p3.png", content_type: "image/png")
party3.save!

party4 = Party.new(
  title: "Précey feat. Best Boy Electric, no:elia, Marie Montexier & Aino DJ",
  music_genre: "Techno",
  location: "JAKI",
  description: "Almost one year after our very first event as Précey, we are back at JAKI and are so thrilled to welcome Best Boy Electric in Cologne. As a DJ, promoter and selector Best Boy Electric has gained popularity in Hamburg and beyond. This summer, they played festivals like Melt and Fusion and started the party series „Dream Journal“ at Golden Pudel. As a member of the queer feminist collective POSSY, they are committed to strengthen FLINTA* artists‘ presence and visibility. As we share this common goal and are in love with their sound – most of the time electro in all its different characteristics – it was a no-brainer for us to invite them to play at JAKI.Alongside Best Boy Electric, no:elia will play her debut as a DJ and also celebrate her birthday with us. She joined Précey just recently. Her huge interest in music got her in contact with the skill in 2020 during the first lockdowns throughout the COVID Pandemic. During the time she bought her first equipment and started practicing while prioritising the sounds origin.Support comes from Aino DJ who also played her debut at Précey a year ago and will close the night with a variety of different subgenres, mostly rooted in breaks and electro. Marie Montexier is also back in Cologne and will serve you a big dose of breaks and 4/4 kick.

  JAKI's entrance is not barrier-free.",
  date: "2022-09-09",
  start_time: "2022-09-09 23:30",
  address: "Venloer Str. 40, 50672 Köln"
)
party4.user = user1
party4.photo.attach(io: url4, filename: "p4.png", content_type: "image/png")
party4.save!

party5 = Party.new(
  title: "Tom-Tom Club feat. LLEE TOTO, Maria Wildeis & Merkush",
  music_genre: "House",
  location: "JAKI",
  description: "Was wäre eine Stadt, eine Szene oder ein Club ohne lokale DJs? Die Tom-Tom Club Reihe bietet Local Heroes und neuen Talenten eine Bühne und ein DJ Booth im Club JAKI. Tom-Tom Club ist ein offener Raum für Austausch, Entdeckungen und grenzenlose, genrefreie musikalische Abenteuer - kurz gesagt, eure neue Lieblings-Clubnacht.

  Jeden Samstag, von 23:30 Uhr bis spät in die Nacht - alle Musikliebhaber:innen, Tänzer:innen, Zuhörer:innen, Freaks und Nicht-Freaks sind willkommen!",
  date: "2022-09-10",
  start_time: "2022-09-10 23:30",
  address: "Venloer Str. 40, 50672 Köln"
)

# picture: https://imgproxy.ra.co/_/quality:100/w:1500/rt:fill/plain/https://images.ra.co/6ba49198550a1883282b88cd5a1067a3e7fc2f09.jpg

party5.user = user4
party5.photo.attach(io: url5, filename: "p5.png", content_type: "image/png")
party5.save!

puts "Created 5 users and 5 parties..."
puts "username: testuser"
puts "email: test@test.com"
puts "password: testtest"
