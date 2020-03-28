class SongsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :song_find, only: [:show, :destroy, :update, :edit]

  def index
    @songs = Song.all
  end

  def show
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def update
    @song = Song.update(song_params)
    redirect_to song_path(@song)
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private

  def song_find
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :artist_name, :album_name, :lyrics_original, :lyrics_translated, :link, :user_id)
  end

end
