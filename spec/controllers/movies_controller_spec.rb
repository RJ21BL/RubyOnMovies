require 'rails_helper'

describe MoviesController do
  let(:movie_factory) {FactoryBot.create(:movie)}

  describe '#index' do
    it 'shows a list of movies' do
      movies = FactoryBot.create_list(:movie, 5)
      get :index

      expect(assigns(:movies)).to eq(movies)
    end
  end

  describe '#show' do
    it 'shows a movie with a title and year' do
      get :show, params: { id: movie_factory.id }

      expect(assigns(:movie)).to eq(movie_factory)
    end
  end

  describe '#create' do
    it 'creates a movie' do
      expect { movie_factory }.to change { Movie.count }.from(0).to(1)
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

  describe '#destroy' do
    it 'destroys a move' do
      movie_factory
      
      expect do
        delete :destroy, params: { id: movie_factory.id }
      end.to change { Movie.count }.by(-1)
    end
  end
end
