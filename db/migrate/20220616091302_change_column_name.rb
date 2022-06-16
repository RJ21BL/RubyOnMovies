class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :genres, :type, :name
  end
end
