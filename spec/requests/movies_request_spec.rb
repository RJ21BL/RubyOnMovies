require 'rails_helper'
require_relative 'shared_examples_movies'
require './spec/requests/support/movies_helper.rb'
# require 'test_helpers'

describe 'Movies', type: :request do
  include MoviesHelper

  describe 'index' do
    context 'GET /' do
      let(:render_index_template) { get '/' }
      it_behaves_like 'render index'
    end

    context 'GET /movies' do
      let(:render_index_template) { get '/movies' }
      it_behaves_like 'render index'
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
