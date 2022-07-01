class Movie < ApplicationRecord
  belongs_to :director, optional: true
  belongs_to :genre, optional: true
end
