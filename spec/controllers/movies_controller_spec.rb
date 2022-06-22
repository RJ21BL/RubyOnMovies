require 'rails_helper'

describe MoviesController do
  describe '#index' do
    it 'shows a list of movies' do
      movies = FactoryBot.create_list(:movie, 5)
      get :index

      expect(assigns(:movies)).to eq(movies)
    end
  end

  describe '#show' do
    it 'shows a movies title and year' do
    end
  end

  describe '#create' do
    it 'builds and saves a new movie' do
    end
  end

  describe '#new' do
    it 'redirect' do
    end
  end

  describe '#edit' do
    it 'edits a movie' do
    end
  end
end
