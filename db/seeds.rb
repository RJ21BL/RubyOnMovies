# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding..'

Movie.destroy_all
Genre.destroy_all
Director.destroy_all

Movie.create([
  {title: 'The Godfather', year: '1972'},
  {title: 'The Godfather: Part II', year: '1974'},
  {title: 'The Godfather: Part III', year: '1990'},
  {title: 'Rush Hour', year: '1998'},
  {title: 'Rush Hour 2', year: '2001'},
  {title: 'Rush Hour 3', year: '2007'},
  {title: 'Training Day', year: '2001'},
  {title: 'Inside Man', year: '2006'},
  {title: 'Jurrassic Park', year: '1993'},
  {title: 'Paranormal Activity', year: '2007'}
])

Genre.create([
  {name: 'Crime/Drama'},
  {name: 'Action/Comedy'},
  {name: 'Crime/Thriller'},
  {name: 'Science Fiction'},
  {name: 'Horror'}
])

Director.create([
  {name: 'Francis Coppolla'},
  {name: 'Brett Ratner'},
  {name: 'Antonie Fuqua'},
  {name: 'Spike Lee'},
  {name: 'Steven Spielberg'},
  {name: 'Oren Peli'}
])

puts 'Seeding complete.'
