# require './app/controllers/movies_controller'
require 'rails_helper'
require 'spec_helper'

describe 'Movies', type: :request do
  it 'sends a get request to the root route' do
    get '/'
    expect(response).to be_successful
  end

  it 'creates a new movie' do
    get '/movies/new'
    assert_response :success

    post '/movies', params: { 
      movie: {title: 'James Bond', year: 2002} 
    }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
