require 'rails_helper'
require_relative 'shared_examples_movies'
require './spec/requests/support/movies_helper.rb'
# require 'test_helpers'

describe 'Movies', type: :request do
  let(:movie_factory) {FactoryBot.create(:movie)}
  include MoviesHelper

  describe 'index' do
    context 'GET /' do
      it 'renders /' do
        get '/'
        render_index_template
      end
    end

    context 'GET /movies' do
      it 'renders /movies' do
        get '/movies'
        render_index_template
      end
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
    get "/movies/#{movie_factory.id}"

    expect(response).to render_template('movies/show')
  end
end
