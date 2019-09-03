class AddOneLinkToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :one_link, :string
    add_index :artists, :one_link, unique: true
  end
end
