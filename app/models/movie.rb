class Movie < ApplicationRecord
  belongs_to :directors
  has_many :genres
end
