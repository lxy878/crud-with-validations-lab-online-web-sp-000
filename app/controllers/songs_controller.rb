class SongsController < ApplicationController
  before_action: :set_song, only: [:show, :edit, :destroy]
  def index
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new()
  end

  def edit

  end

  def update

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
