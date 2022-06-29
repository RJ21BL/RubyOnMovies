require 'rails_helper'
require_relative 'shared_examples_movies'

describe 'Movies', type: :request do
  describe 'index' do
    it 'renders the index template' do
      get '/'

      expect(response).to render_template('index')
    end

    it 'renders the index template' do
      get '/movies'

      expect(response).to render_template('index')
    end
  end

  it 'renders the new template then redirects to the index' do
    get '/movies/new'

    expect(response).to render_template('movies/new')

    post '/movies', params: { movie: { title: 'Die Another Day', year: 2002 } }

    expect(response).to redirect_to('/')
  end

  it 'renders the edit template' do
    movie = Movie.create(title: 'The Godfather', year: '1972')
    get "/movies/#{movie.id}/edit"

    expect(response).to render_template('movies/edit')
  end

  it 'renders the show template' do
    director = Director.create(id: 1, name: 'Peter Jackson')
    genre = Genre.create(id: 1, name: 'Adventure')
    movie = Movie.create(title: 'The Felowship Of The Ring', year: 2001, director_id: director.id, genre_id: genre.id)

    get "/movies/#{movie.id}"

    expect(response).to render_template('movies/show')
  end
end
