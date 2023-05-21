
# TODO: More Comments
require 'mechanize'
require 'open-uri'

# Testing Scarper

url = 'https://ra.co/events/de/cologne'
agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'  # Set a user agent to mimic a web browser

# Disable robots.txt checking to bypass restrictions
agent.robots = false

# Add headers to mimic a real browser request
headers = {
  'Accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
  'Accept-Language' => 'en-US,en;q=0.5',
  'Accept-Encoding' => 'gzip, deflate, br',
  'DNT' => '1',
  'Connection' => 'keep-alive',
  'Upgrade-Insecure-Requests' => '1'
}
agent.request_headers = headers

# Make a request to the website
page = agent.get(url)

# Perform any necessary actions to bypass restrictions or handle cookies
# For example, you may need to log in or accept cookies on the website

# Now, you can scrape the events from the page using appropriate selectors
events = page.search('.Text-sc-1t0gn2o-0')

# Process and display the scraped events
events.each do |event|
  # Extract relevant information from each event element
  event_title = event.at('.event-title').text.strip
  event_date = event.at('.event-date').text.strip
  event_location = event.at('.event-location').text.strip

  # Display the extracted information
  puts "Title: #{event_title}"
  puts "Date: #{event_date}"
  puts "Location: #{event_location}"
  puts "-" * 30
end


# puts "Deleting the old Database..."

# Attending.destroy_all
# Comment.destroy_all
# Party.destroy_all
# User.destroy_all

# url1 = File.open(Rails.root.join('db/images/electroniclove.png'))
# url2 = File.open(Rails.root.join('db/images/rememberthefuture.jpg'))
# url3 = File.open(Rails.root.join('db/images/pollerwiesenbootzwei.jpg'))
# url4 = File.open(Rails.root.join('db/images/precey.png'))
# url5 = File.open(Rails.root.join('db/images/tomtomclub.jpg'))
# url6 = File.open(Rails.root.join('db/images/beatsxbassxcologne.jpg'))
# url7 = File.open(Rails.root.join('db/images/foxy.png'))
# url8 = File.open(Rails.root.join('db/images/sectorcologne.jpg'))
# url9 = File.open(Rails.root.join('db/images/phonovision.png'))
# url10 = File.open(Rails.root.join('db/images/underdive.jpg'))

# puts "Creating 5 users..."

# user1 = User.new(
#   username: "testuser",
#   email: "test@test.com",
#   password: "testtest"
# )
# user1.save!

# jtx = User.new(
#   username: "JTX",
#   email: "justus@just.us",
#   password: "testtest"
# )
# jtx.save!

# marusha = User.new(
#   username: "marusha",
#   email: "marusha@mayday.com",
#   password: "marusha"
# )
# marusha.save!

# drmotte = User.new(
#   username: "drmotte",
#   email: "drmotte@loveparade.com",
#   password: "drmotte"
# )
# drmotte.save!

# svaeth = User.new(
#   username: "s.vaeth",
#   email: "sven@vaeth.de",
#   password: "svensven"
# )
# svaeth.save!

# vincent = User.new(
#   username: "vincentraven",
#   email: "raven@isback.com",
#   password: "ravenisback"
# )
# vincent.save!

# puts "Create 10 parties..."

# party1 = Party.new(
#   title: "electronic love feat. DJ MELL G (Juicy Gang)",
#   music_genre: "Techno",
#   location: "Helios 37",
#   description: "✲ Electronic Love feat. DJ MELL G
#   + Secret Oldschool Jungle 90s Rave Floor / 09.09.2022 / Helios 37

#   ★ Lineup ★
#   ◉ DJ MELL G (Juicy Gang)
#   ◉ Isabelle Beaucamp (EhrenKlub I Rom)
#   ◉ Tammo De Vries & Freddy Deckert (Morning Glory)

#   ★ Secret Oldschool Jungle 90s Rave Floor:
#   ◉ TBC

#   ◉ Nach dem rauschenden Electronic Summer of Love Festival geht es etwas kleiner, aber nicht weniger exstatischer im Helios37 weiter.
#   ◉ Sound by: 4 Punkt d&b V10 + J-SUBS (!) powered by D80
#   ◉ 12€ + VVK * Kein Mindestverzehr
#   ◉ Abendkasse: TBA

#   Solltet ihr sexistisches, nationalistisches oder diskriminierendes Gedankengut in jedweder Form in euch tragen, so bitten wir euch, von unserem Rave fernzubleiben. Der Schutz von diskriminierungsfreien Räumen - dazu gehört auch unsere Veranstaltung - hat für uns oberste Priorität. ",
#   date: "2022-09-09",
#   start_time: "2022-09-09 23:00",
#   address: "Heliosstraße 37, 50825 Cologne"
# )
# party1.user = svaeth
# party1.photo.attach(io: url1, filename: "p1.png", content_type: "image/png")
# party1.save!

# party2 = Party.new(
#   title: "Remember the Future with Terr, Voltmar & Shumi",
#   music_genre: "Techno",
#   location: "Gewölbe",
#   description: "Das Gewölbe ist klimatisiert. Gewölbe is fully air-conditioned.

#   feel safe – feel free
#   Das Gewölbe soll für alle Gäste ein geschützter Ort sein. Deshalb gilt ab sofort ein striktes Fotoverbot im gesamten Klub.
#   Unabhängig von Herkunft, Geschlecht, sexueller Orientierung oder Religion erwarten wir von all unseren Gästen einen respektvollen Umgang miteinander. Homophobie, sexistisches oder rassistisches Verhalten sowie jegliche andere Form von Diskriminierung, Gewalt oder Beleidigungen haben im Gewölbe keinen Platz. Solltet ihr Zeug:innen von unangemessenem Verhalten werden oder selbst in eine unangenehme Lage kommen, wendet euch bitte jederzeit an unser Personal.
#   Bei verlorengegangenen Gegenständen bitte eine Mail an lostandfound@gewoelbe.net schreiben",
#   date: "2022-09-09",
#   start_time: "2022-09-09 23:00",
#   address: "Hans-Böckler-Platz 2, 50672 Cologne"
# )
# party2.user = svaeth
# party2.photo.attach(io: url2, filename: "p1.png", content_type: "image/png")
# party2.save!

# party3 = Party.new(
#   title: "PollerWiesen Boot Zwei 2022",
#   music_genre: "Techno",
#   location: "MS Rheinenergie",
#   description: "Join our unique 7h daytime cruise along the Rhine on the MS RheinEnergie, Europe`s biggest event-ship. Get lost in time and space with scenic wideness, captivating industry and the vastness of the summer sky...

#   _

#   Line up

#   coming soon

#   _

#   Tickets

#   Regular Ticket - 36,00
#   Group Ticket [5 Pers.] - 165,00

#   _

#   Infos

#   Sunday, September 11
#   MS RheinEnergie - Konrad Adenauer Ufer 80 - 50668 Köln
#   Boarding 11:45 / Departure 12:45 / Return 20:00
#   Age 18+

#   _
#   ",
#   date: "2022-09-11",
#   start_time: "2022-09-11 11:45",
#   address: "Rheinstraße, 50996 Cologne, Germany"
# )
# party3.user = marusha
# party3.photo.attach(io: url3, filename: "p3.png", content_type: "image/png")
# party3.save!

# party4 = Party.new(
#   title: "Précey feat. Best Boy Electric, no:elia, Marie Montexier & Aino DJ",
#   music_genre: "Techno",
#   location: "JAKI",
#   description: "Almost one year after our very first event as Précey, we are back at JAKI and are so thrilled to welcome Best Boy Electric in Cologne. As a DJ, promoter and selector Best Boy Electric has gained popularity in Hamburg and beyond. This summer, they played festivals like Melt and Fusion and started the party series „Dream Journal“ at Golden Pudel. As a member of the queer feminist collective POSSY, they are committed to strengthen FLINTA* artists‘ presence and visibility. As we share this common goal and are in love with their sound – most of the time electro in all its different characteristics – it was a no-brainer for us to invite them to play at JAKI.Alongside Best Boy Electric, no:elia will play her debut as a DJ and also celebrate her birthday with us. She joined Précey just recently. Her huge interest in music got her in contact with the skill in 2020 during the first lockdowns throughout the COVID Pandemic. During the time she bought her first equipment and started practicing while prioritising the sounds origin.Support comes from Aino DJ who also played her debut at Précey a year ago and will close the night with a variety of different subgenres, mostly rooted in breaks and electro. Marie Montexier is also back in Cologne and will serve you a big dose of breaks and 4/4 kick.

#   JAKI's entrance is not barrier-free.",
#   date: "2022-09-09",
#   start_time: "2022-09-09 23:30",
#   address: "Venloer Str. 40, 50672 Cologne"
# )
# party4.user = marusha
# party4.photo.attach(io: url4, filename: "p4.png", content_type: "image/png")
# party4.save!

# party5 = Party.new(
#   title: "Tom-Tom Club feat. LLEE TOTO, Maria Wildeis & Merkush",
#   music_genre: "House",
#   location: "JAKI",
#   description: "Was wäre eine Stadt, eine Szene oder ein Club ohne lokale DJs? Die Tom-Tom Club Reihe bietet Local Heroes und neuen Talenten eine Bühne und ein DJ Booth im Club JAKI. Tom-Tom Club ist ein offener Raum für Austausch, Entdeckungen und grenzenlose, genrefreie musikalische Abenteuer - kurz gesagt, eure neue Lieblings-Clubnacht.

#   Jeden Samstag, von 23:30 Uhr bis spät in die Nacht - alle Musikliebhaber:innen, Tänzer:innen, Zuhörer:innen, Freaks und Nicht-Freaks sind willkommen!",
#   date: "2022-09-10",
#   start_time: "2022-09-10 23:30",
#   address: "Venloer Str. 40, 50672 Cologne"
# )

# # picture: https://imgproxy.ra.co/_/quality:100/w:1500/rt:fill/plain/https://images.ra.co/6ba49198550a1883282b88cd5a1067a3e7fc2f09.jpg

# party5.user = marusha
# party5.photo.attach(io: url5, filename: "p5.png", content_type: "image/png")
# party5.save!

# party6 = Party.new(
#   title: "Beats x Bass x WEEKENDER with Torsten Kanzler (TKR, Berlin) & AKTIVE (DeVice, UK)",
#   music_genre: "Techno, D&B, Psytrance",
#   location: "Odonien",
#   description: "#Beats (Techno):
#   Torsten Kanzler (TKR, Berlin)
#   Kevin Arnold (Kassiopeia/ Bootshaus)
#   Erich Fortov (Kassiopeia)

#   #Bass (Drum&Bass):
#   Aktive (DeVice, UK)
#   Jon Void (Liquicity/ PLAY! Music)
#   Rebko (PLAY! Music/ Drop That) [BIRTHDAY SET!]
#   Lackla (Drop That!)
#   XXX

#   #Bus (Psytrance, Goa, Progressive)
#   Psybus Crew

#   In dieser Woche (7.9.) pausiert das #MittWochenende ausnahmsweise erneut, dafür gibt es aber einen fettes Weekend Special am Samstag, den 10.09. mit den Special Guests TORSTEN KANZLER (TKR, Berlin) und AKTIVE (DeVice, UK) + Psybus Crew im Goa Bus ",
#   date: "2022-09-10",
#   start_time: "2022-09-10 23:00",
#   address: "Hornstrasse 85; 50825 Cologne"
# )

# party6.user = vincent
# party6.photo.attach(io: url6, filename: "p6.png", content_type: "image/png")
# party6.save!

# party7 = Party.new(
#   title: "Foxy invites Houseum & Small Great Things",
#   music_genre: "Deep House",
#   location: "Reineke Fuchs",
#   description: "Foxy invites HOUSEUM & SMALL GREAT THINGS


#   With over 2,000 tracks downloaded and 367,000 subscribers on the YouTube channel, as well as a dozen vinyl releases on the labels, Houseum, founded in 2016, has arguably become one of the most important players in house music today.
#   Behind it lies 4 producers (Gavinco, Ricky Razu, Holo and Marc Brauner) and one inveterate digger (Houseum itself). All capable of playing at dusk as well as dawn, our selection crosses the horizons of house music and continues to expand.

#   Small Great Things. is a vinyl label based in Berlin founded by Luca Olivotto.
#   The label covers a wide range of house and disco sub-genres, with one idea in common: details make a difference.
#   That ́s the vision shared by the artists featured on Small Great Things.
#   The name was chosen because, in life, little things matter more than big things. Even if it doesn ́t seem that way.
#   Small Great Things. runs monthly the events 'Small Great House' & 'Small Great Garden' in Berlin.
#   The Berlin Label can rely on residents like Marc Brauner, Luca Olivotto, David Silver, Androosh etc. ",
#   date: "2022-09-10",
#   start_time: "2022-09-10 22:00",
#   address: "Aachener Straße 50, 50674 Cologne, "
# )

# party7.user = vincent
# party7.photo.attach(io: url7, filename: "p7.png", content_type: "image/png")
# party7.save!

# party8 = Party.new(
#   title: "Sector │ New Frames - LIVE │ Brutalism Soundsystem │ Kavaro",
#   music_genre: "Techno",
#   location: "Artheater",
#   description: "Sector with:

#   ▲ New Frames - LIVE | R-Label Group. Bite. Haven
#   ▲ Brutalism Soundsystem | Brutalism Cologne
#   ▲ Kavaro | Sector Cologne

#   Info:
#   Having made a name for themselves as Berlin Techno’s fiercest live and dj duo, Mathis Mootz aka The Panacea and fellow Berlin resident David Frisch combine their inspirations of thriving techno rave culture all the way from its origins until now. Melding genre-bending electronic body music beyond its most outer edges, they develop a driving sonic signature that is progressively contemporary while steadfastly focused.
#   With releases on labels such as Bite, R-Label Group and Haven, New Frames create productions designed both for the dancefloor and for intense home listening with detailed, multilayered sound design perpetuated by masterfully powerful instrumentation and precise programming. (Source: thrustagency.com)

#       Event-Admin
#       Falko Kavaro
#       Dieses Event aktualisieren
#   ",
#   date: "2022-09-09",
#   start_time: "2022-09-09 22:30",
#   address: "Ehrenfeldgürtel 127; 50823 Cologne"
# )

# party8.user = drmotte
# party8.photo.attach(io: url8, filename: "p8.png", content_type: "image/png")
# party8.save!

# party9 = Party.new(
#   title: "PhonoVision Invites: Maara",
#   music_genre: "Trance",
#   location: "Subway",
#   description: "For our September instalment, we present you a FLINTA* only Line Up put together by DJ Sweet6teen.

#   Catching the Canada based Prog-Trance goddess Maara on her first tour through Europe, we're beyond excited to host her Cologne debut at our beloved Club Subway. Spellbinding her audiences with a dreamy, drum-driven and extraterrestrial soundscape, Maara has built a name for herself with entrancing releases on NAFF, Radiant Love and Sonido Isla.

#   Surf 2 Glory, the perfect match for this enchanting night, will round things up with their affinity for undiscovered, energetic 90's House and Trance gems - serving you catchy vocals and fast basslines.

#   Mesmerising every dancer with her boundless high-NRG sets, DJ Sweet6teen's playful attitude behind the decks surely can't be missed either.

#   _________

#   Only Box Office / Abendkasse
#   ",
#   date: "2022-09-09",
#   start_time: "2022-09-09 23:00",
#   address: "Aachenerstr. 82-84; 50674 Cologne"
# )

# party9.user = marusha
# party9.photo.attach(io: url9, filename: "p9.png", content_type: "image/png")
# party9.save!

# party10 = Party.new(
#   title: "UnderDive with Beatamines (Einmusika / Heinz Music) + Solink & Cundera",
#   music_genre: "House",
#   location: "Club Z in Zimmermans",
#   description: "Mit Beatamines aus der Sommerpause...

#   Nachdem wir uns gebührend technoid in die Sommerpause verabschiedet haben, melden wir uns nun genau so qualitativ aber melodisch zurück!

#   Beatamines gehört für uns schon seit langer Zeit mit zu den kreativsten und talentiertesten Artists im melodischen Bereich. Dabei überzeugt er regelmäßig mit großartigen Releases auf namhaften Labeln wie z.B. Einmusika, Heinz Music und Traum Schallplatten. Wir freuen uns also auf eine sehr besondere und melodische Reise. Den dazu passenden lokalen Support gibt es dieses Mal von Solink und Cundera.


#   Melodic / Deep / Progressive

#   Geburtstagskinder haben freien Eintritt

#   Visuals by artistorlando

#   Sound by d&b audiotechnik
#    ",
#   date: "2022-09-09",
#   start_time: "2022-09-09 22:30",
#   address: "Venloer Str 39, 50672, Cologne"
# )

# party10.user = vincent
# party10.photo.attach(io: url10, filename: "p10.png", content_type: "image/png")
# party10.save!

# puts "Created 5 users and 10 parties..."
# puts "username: JTX"
# puts "email: test@test.com"
# puts "password: testtest"
