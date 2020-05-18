class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to @artist
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params)
        redirect_to @artist
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
        redirect_to @artist
    end

    # private
    def artist_params
        params.require(:artist).permit(:name)
    end
end
