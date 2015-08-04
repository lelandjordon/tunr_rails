class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to @playlist
    else
      render :new
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to playlists_url
  end

  def add_song
    # ADD CODE HERE TO ADD SONG TO PLAYLIST
    redirect_to @playlist
  end

  def remove_song
    # ADD CODE HERE TO REMOVE SONG FROM PLAYLIST
    redirect_to @playlist
  end

  private
  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
