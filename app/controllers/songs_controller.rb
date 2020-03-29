class SongsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :song_find, only: [:show, :destroy, :update, :edit]

  def index
    @songs = policy_scope(Song)
  end

  def show
  end

  def create
    @song = Song.new(song_params)
    @song.link = return_key(@song.link)
    @song.user_id = current_user
    authorize @song

    @song.save
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
    authorize @song
  end

  def edit
  end

  def update
    @song = Song.update(song_params)
    @song.link = return_key(@song.link)
    redirect_to song_path(@song)
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private

  def song_find
    @song = Song.find(params[:id])
    authorize @song
  end

  def song_params
    params.require(:song).permit(:title, :artist_name, :album_name, :lyrics_original, :lyrics_translated, :link, :user_id)
  end

  def return_key(url)
    binding.pry
    key = url.match(/\watch\?v=(.*)/)[1]

    return "https://www.youtube.com/embed/#{key[0..10]}"
  end

end
