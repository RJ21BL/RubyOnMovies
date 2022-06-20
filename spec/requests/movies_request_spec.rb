# require './app/controllers/movies_controller'
require 'rails_helper'
require 'spec_helper'

describe 'Movies', type: :request do
  it 'requests list of all movies' do
    get '/'
    expect(response).to be_successful
  end
end
