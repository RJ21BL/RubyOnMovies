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

  it 'creates a movie and redirects to the new URL' do
    get '/movies/new'

    expect(response).to be_successful
    
    post '/movies', 
      params: { movie: { title: 'Die Another Day', year: 2002 } }
    assert_response :redirect
    follow_redirect!

    expect(response).to be_successful
  end

  it 'renders the edit path' do
    movie = Movie.create({title: 'The Godfather', year: '1972'})
    get "/movies/#{movie.id}/edit"

    expect(response).to render_template('movies/edit')
  end
end
