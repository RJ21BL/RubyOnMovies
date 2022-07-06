FactoryBot.define do
  factory :movie do
    title { 'Kickboxer' }
    year  { 1990 }
    director
    genres { |g| [g.association(:genre)] }
  end
end
