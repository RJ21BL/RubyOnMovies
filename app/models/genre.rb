class Genre < ApplicationRecord
  has_and_belongs_to_many :movies, optional: true
  has_and_belongs_to_many :directors, optional: true
  accepts_nested_attributes_for :directors
end
