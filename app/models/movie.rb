class Movie < ApplicationRecord
  belongs_to :directors, optional: true
  belongs_to :genre, optional: true
end
