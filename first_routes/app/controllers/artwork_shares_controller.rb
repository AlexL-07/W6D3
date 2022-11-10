class ArtworkSharesController < ApplicationController
    def create
        artworkshare = ArtworkShare.new(artwork_shares_params)
        if artworkshare.save
            render json: artworkshare
        else
            render json: artworkshare.errors.full_messages, status: :unprocessible_entity
        end
    end

    def destroy
        artworkshare = ArtworkShare.find_by(id: params[:id])
        artworkshare.destroy
        redirect_to artworks_url
    end

    private
    def artwork_shares_params
        params.require(:artwork_shares).permit(:artwork_id, :viewer_id)
    end
end