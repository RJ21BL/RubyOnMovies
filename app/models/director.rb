class Director < ApplicationRecord
  has_many :movies
  has_and_belongs_to_many :genres, optional: true
  accepts_nested_attributes_for :movies, :genres
end
