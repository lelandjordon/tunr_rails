class Song < ActiveRecord::Base
  belongs_to :artist
  # ADD CODE TO ASSOCIATE PLAYLISTS TO ENTRIES AND SONGS
  has_many :playlist_entries
  has_many :playlists, through: :playlist_entries
end
