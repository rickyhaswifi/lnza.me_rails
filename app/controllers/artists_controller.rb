class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
    end
  
    def new
      @artist = Artist.new
      render partial: 'form'
    end
  
    def show
    end
    
  
    def create
      @artist = Artist.new(artist_params)
        if @artist.save
          redirect_to artists_path
        else
          render :new  
        end  
    end
  
    def edit
      render partial: 'form'
    end
  
    def update

        if @artist.update(artist_params)
          redirect_to artist_path
        else
          render :edit
        end
    end
  
    def destroy
      @artist.destroy
      redirect_to artists_path
    end
  

    private
      def artist_params
        params.require(:artist).permit(:attr, :performer, :recordlabel, :cover, :facebook_num, :spotify_num, :youtube_num, :instagram_num, 
        :twitter_num, :dropbox_link, :video_emb, :biography, :audio, :booking, :spotify_link, :facebook_link, :instagram_link, :twitter_link, :youtube_link)
      end

      def set_artist
        @artist = Artist.find(params[:id])
      end

end

