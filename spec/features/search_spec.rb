require 'rails_helper'

describe 'search bar', type: :feature do
  it 'searches for a movie by title' do
    visit movies_path
    movie = FactoryBot.create(:movie)
    fill_in(:search_bar, with: movie.title)
    click_button('Search movie')

    expect(page).to have_content(movie.id)
    expect(page).to have_content(movie.title)
    expect(page).to have_content(movie.year)
    expect(page).to have_content(movie.director.name)
    expect(page).to have_content(movie.genres.name)
  end

  it 'shows an error message if the movie does not exist' do
    visit movies_path
    movie = 'Alien'
    error_msg = 'Movie not found'
    fill_in(:search_bar, with: movie)
    click_button('Search movie')

    expect(page).to have_content(error_msg)
  end
end
