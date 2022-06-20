puts 'Seeding..'

Movie.destroy_all
Genre.destroy_all
Director.destroy_all

Movie.create!([
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

Genre.create!([
  {name: 'Crime/Drama'},
  {name: 'Action/Comedy'},
  {name: 'Crime/Thriller'},
  {name: 'Science Fiction'},
  {name: 'Horror'}
])

Director.create!([
  {name: 'Francis Coppolla'},
  {name: 'Brett Ratner'},
  {name: 'Antonie Fuqua'},
  {name: 'Spike Lee'},
  {name: 'Steven Spielberg'},
  {name: 'Oren Peli'}
])

movie1 = Movie.find(1)
movie1.director_id = 1
movie1.save
genre1 = Movie.find(1)
genre1.genre_id = 1
genre1.save

movie2 = Movie.find(2)
movie2.director_id = 1
movie2.save
genre2 = Movie.find(2)
genre2.genre_id = 1
genre2.save

movie3 = Movie.find(3)
movie3.director_id = 1
movie3.save
genre3 = Movie.find(3)
genre3.genre_id = 1
genre3.save

movie4 = Movie.find(4)
movie4.director_id = 2
movie4.save
genre4 = Movie.find(4)
genre4.genre_id = 2
genre4.save

movie5 = Movie.find(5)
movie5.director_id = 2
movie5.save
genre5 = Movie.find(5)
genre5.genre_id = 2
genre5.save

movie6 = Movie.find(6)
movie6.director_id = 2
movie6.save
genre6 = Movie.find(6)
genre6.genre_id = 2
genre6.save

movie7 = Movie.find(7)
movie7.director_id = 3
movie7.save
genre7 = Movie.find(7)
genre7.genre_id = 3
genre7.save

movie8 = Movie.find(8)
movie8.director_id = 4
movie8.save
genre8 = Movie.find(8)
genre8.genre_id = 3
genre8.save

movie9 = Movie.find(9)
movie9.director_id = 5
movie9.save
genre9 = Movie.find(9)
genre9.genre_id = 4
genre9.save

movie10 = Movie.find(10)
movie10.director_id = 6
movie10.save
genre10 = Movie.find(10)
genre10.genre_id = 5
genre10.save

puts 'Seeding complete.'
