require 'rails_helper'

describe 'Movies', type: :request do
  it 'sends a get request to get the root URL' do
    get '/'

    expect(response).to be_successful
  end

  it 'sends a get request to get the movies URL' do
    get '/movies'

    expect(response).to be_successful
  end

  it 'renders the new path then redirects to the post path' do
    get '/movies/new'

    expect(response).to render_template('movies/new')

    post '/movies', params: { movie: { title: 'Die Another Day', year: 2002 } }
    
    expect(response).to redirect_to('/')
  end

  it 'renders the edit path' do
    movie = Movie.create({ title: 'The Godfather', year: '1972' })
    get "/movies/#{movie.id}/edit"

    expect(response).to render_template('movies/edit')
  end
end
