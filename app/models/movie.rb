class Movie < ApplicationRecord
  has_and_belongs_to_many :director, optional: true
  belongs_to :genre, optional: true
end
