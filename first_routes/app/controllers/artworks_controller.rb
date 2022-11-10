class ArtworksController < ApplicationController

    def index
        artwork = Artwork.all
        render json: artwork
    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: 422
        end
    end

    def show
        artwork = Artwork.find_by(id: params[:id])
        render json: artwork
    end

    def update
        artwork = Artwork.find_by(id: params[:id])
        if artwork.update(artwork_params)
            redirect_to artworks_url(artwork.id)
        else
           render json: artwork.errors.full_messages, status: 422
        end 
    end

    def destroy
        artwork = Artwork.find_by(id: params[:id])
        artwork.destroy
        redirect_to artworks_url
    end

    private

    def artwork_params
        params.require(:artworks).permit(:title, :artist_id, :image_url)
    end



end