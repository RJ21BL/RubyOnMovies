class Genre < ApplicationRecord
  belongs_to :movies
  has_and_belongs_to_many :directors
end
