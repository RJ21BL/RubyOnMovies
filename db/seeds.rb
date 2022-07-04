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

the_godfather = Movie.where(id: [1,2,3]).each do |movie|
  genre_1 = Genre.find(1)
  movie.genres << genre_1
  movie.director_id = 1
  movie.save
end

rush_hour = Movie.where(id: [4,5,6]).each do |movie|
  genre_2 = Genre.find(2)
  movie.genres << genre_2
  movie.director_id = 2
  movie.save
end

training_day = Movie.find(7)
genre_3 = Genre.find(3)
training_day.genres << genre_3
training_day.director_id = 3

inside_man = Movie.find(8)
genre_3 = Genre.find(3)
inside_man.genres << genre_3
inside_man.director_id = 4
inside_man.save

jurrassic_park = Movie.find(9)
genre_4 = Genre.find(4)
jurrassic_park.genres << genre_4
jurrassic_park.director_id = 5
jurrassic_park.save

inside_man = Movie.find(10)
genre_5 = Genre.find(5)
inside_man.genres << genre_5
inside_man.director_id = 6
inside_man.save

# movie_1 = Movie.find(1)
# movie_1.director_id = 1
# movie_1.genre_id = 1
# movie_1.save

# movie_2 = Movie.find(2)
# movie_2.director_id = 1
# movie_2.genre_id = 1
# movie_2.save

# movie_4 = Movie.find(4)
# movie_4.director_id = 2
# movie_4.genre_id = 2
# movie_4.save

# movie_5 = Movie.find(5)
# movie_5.director_id = 2
# movie_5.genre_id = 2
# movie_5.save

# movie_6 = Movie.find(6)
# movie_6.director_id = 2
# movie_6.genre_id = 2
# movie_6.save

# movie_7 = Movie.find(7)
# movie_7.director_id = 3
# movie_7.genre_id = 3
# movie_7.save

# movie_8 = Movie.find(8)
# movie_8.director_id = 4
# movie_8.genre_id = 3
# movie_8.save

# movie_9 = Movie.find(9)
# movie_9.director_id = 5
# movie_9.genre_id = 4
# movie_9.save

# movie_10 = Movie.find(10)
# movie_10.director_id = 6
# movie_10.genre_id = 5
# movie_10.save

puts 'Seeding complete.'
