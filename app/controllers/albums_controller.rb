class AlbumsController < ApplicationController
  def index
    @albums = Album.all.order(artist: :asc)
  end

  def show
    @album = Album.find(params[:id])
  end

  def by_artist
    @albums = Album.where(artist: params[:artist]).order(title: :asc)
    render :index
  end

  def new
    @album = Album.new   #why? A: we dont actually save this instance, we just use it to describe the model to the view
  end

  def create
    @album = Album.new(album_create_params[:album])  #use the params that you accept
    if @album.save                         #save will return true if it DID save
      redirect_to album_path(@album.id)
    else                                   #redirect them somewhere else if not working
      render :new
    end
  end

  private

  def album_create_params  #tell rails which params are ok to be in the model
    params.permit(album: [:artist, :title, :label_code])
  end
end
