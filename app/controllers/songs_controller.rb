class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def edit
        @song = Song.find(params[:id])
    end

    def create
        a = Artist.find_by_name(params[:song][:artist])
        g = Genre.find_by_name(params[:song][:genre])

        s = Song.new
        s.title = params[:song][:title]
        s.artist = a
        s.genre = g
        s.save
        
        redirect_to song_path(s.id)
    end
   
    def update
        s = Song.find(params[:id])
        # s.title = song_params[:title]

        # artist_id = song_params[:artist_id]
        # artist = Artist.find_by(name: artist_name)
        # s.artist = artist
   
        # genre_id = song_params[:genre_id]
        # genre = Genre.find_by(title: genre_title)
        # s.genre = genre
    
        s.update(song_params)
        # s.save
    
        redirect_to song_path(s.id)
       
    end

    def destroy
        @song = Song.find(params[:id])
        @song.destroy
        redirect_to songs_path
    end

    private 
    def song_params
        params.require(:song).permit(:title, :artist_id, :genre_id)
    end
end
