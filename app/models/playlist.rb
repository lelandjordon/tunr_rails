class Playlist < ActiveRecord::Base
  has_many :playlist_entries
  # ADD CODE TO ASSOCIATE PLAYLISTS TO ENTRIES AND SONGS
end
