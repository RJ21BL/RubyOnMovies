class AddGenreForeignKeyToMovie < ActiveRecord::Migration[6.1]
  def change
    add_reference :genres, :movie, foreign_key: true
  end
end
