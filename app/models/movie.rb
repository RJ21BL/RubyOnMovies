class Movie < ApplicationRecord
  belongs_to :director, optional: true
  has_and_belongs_to_many :genres, optional: true
end
