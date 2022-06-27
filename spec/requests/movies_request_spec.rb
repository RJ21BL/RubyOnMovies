require 'rails_helper'

describe 'Movies', type: :request do
  it 'gets the index url' do
    get '/'

    expect(response).to be_successful
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
    movie = Movie.create(id: 1, title: 'The Felowship Of The Ring', year: 2001, director_id: 1, genre_id: 1)

    get "/movies/#{movie.id}"

    expect(response).to render_template('movies/show')
  end

  describe '#create' do
    it 'creates a movie' do
    end
  end

  describe '#show' do
    it 'show a movie' do
    end
  end

  describe '#edit' do
    it 'edits a movie' do
    end
  end

  describe '#destroy' do
    it 'deletes a movie' do
    end
  end
end
