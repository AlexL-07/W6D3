class Artwork < ApplicationRecord
    belongs_to :artist, 
        foreign_key: :artist_id,
        class_name: :User

    has_many :artwork_shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer

    has_many :comments,
        foreign_key: :artwork_id,
        class_name: :Comment, 
        inverse_of: :artwork,
        dependent: :destroy

    def self.artworks_for_user_id(user_id)
        Artwork.joins(:artwork_shares).where('artwork_shares.viewer_id = (?) OR artworks.artist_id = (?)', user_id, user_id).distinct
    end
end
