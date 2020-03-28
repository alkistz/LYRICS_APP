# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
  {
    email: 'alkiviadistzaras@yahoo.gr',
    password: 'xaxaxa123'
  }

])


songs = Song.create([
  {
    title: 'First song',
    artist_name: 'Alkis',
    album_name: 'PAOK Kordelio',
    lyrics_original: 'ΠΑΟΚ εκδρομές ναρκωτικά, έτσι μάθαμε από παιδιά!',
    lyrics_translated: 'PAOK field trips and drugs, that is how we were taught from a young age!',
    link: 'https://www.youtube.com/watch?v=mQH7xooHIec',
    user_id: 1
  }

])
