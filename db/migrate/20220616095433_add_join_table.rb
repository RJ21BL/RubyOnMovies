class AddJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :directors, :genres do |t|
      t.index :director_id
      t.index :genre_id
    end
  end
end
