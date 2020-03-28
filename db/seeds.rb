# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Song.destroy_all

users = User.create([
  {
    email: 'alkiviadistzaras@yahoo.gr',
    password: 'xaxaxa123'
  }

])


songs = Song.create([
  {
    title: 'Χιλιομετρα καναμε παλι',
    artist_name: 'Alkis',
    album_name: 'PAOK Kordelio',
    lyrics_original: "Χιλιομετρα καναμε παλι \n
Για την καψουρα μας την πιο μεγαλη \n
ΠΑΟΚ, εκδρομες, ναρκωτικα \n
Ετσι μαθαμε απο παιδια
Δικεφαλε μονο για 'σενα
Νιωθω τη ζωη μου στα χαμενα
ΠΑΟΚ Ολε ολε ολε ολε-ο
Οπου και να παιζεις θα στο λεω
ΠΑΟΚ Ολε ολε ολε ολε-ο
Για 'σενα θα τα σπαω και θα καιω ",
    lyrics_translated: "We've travelled for many kilometers again, for our greatest love,
PAOK, travel, drugs, that's how we were taught since we were kids,
Only in front of you Two Headed Eagle, my life seems significant,
PAOK OLE OLE OLE OLE-O, Wherever you play I'll sing it to you!
PAOK OLE OLE OLE OLE-O, For you I'll smash and burn!",
    link: 'https://www.youtube.com/watch?v=mQH7xooHIec',
    user_id: 1
  }

])
