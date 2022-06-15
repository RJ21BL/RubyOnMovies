class Director < ApplicationRecord
  has_many :movies
  has_and_belongs_to_many :genres
end
