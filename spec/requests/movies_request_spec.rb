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

  it 'sends a get request to get the new URL ' do
    get '/movies/new'
    expect(response).to be_successful
  end

  it 'creates a new movie' do
    get '/movies/new'
    assert_response :success

    post '/movies', params: { 
      movie: { title: 'James Bond', year: 2002 }
    }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
