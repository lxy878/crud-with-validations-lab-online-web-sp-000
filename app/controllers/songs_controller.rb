class SongsController < ApplicationController
  before_action: :set_song, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(post_params)
    if song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @song.update(post_params)
    if @song.valid?
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  def destroy

  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def post_params
      params.require(:song).permit(:title, :released, :release_year, :genre, :artist_name)
    end
end
