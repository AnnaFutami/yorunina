class SongsController < ApplicationController

  def index
  end

  def new
      @songs = Song.new
    end
  
    def show
      @songs = Song.find_by(id: params[:id])
    end

    def create
      song = Song.new(song_params)
  
      if song.save
          flash[:notice] = "診断が完了しました"
          redirect_to song_path(song.id)
      else
          redirect_to :action => "new"
      end
    end
  
    
    private
    def song_params
        params.require(:song).permit(:id, :question, :question2)
    end

end