class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :performer
      t.string :recordlabel
      t.string :cover
      t.string :facebook_num
      t.string :spotify_num
      t.string :youtube_num
      t.string :instagram_num
      t.string :twitter_num
      t.string :dropbox_link
      t.string :video_emb
      t.text :biography
      t.string :audio
      t.string :booking
      t.string :spotify_link
      t.string :facebook_link
      t.string :instagram_link
      t.string :twitter_link
      t.string :youtube_link

      t.timestamps
    end
  end
end
