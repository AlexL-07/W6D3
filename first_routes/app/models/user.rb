class User < ApplicationRecord
    validates :username, presence: :true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork,
        inverse_of: :artist,
        dependent: :destroy
        

    has_many :artwork_shares,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy
    
    has_many :shared_artworks, 
        through: :artwork_shares,
        source: :artwork 
        #This User#shared_artworks association should return the set of artworks that have been shared with that user, not the set of artworks that a user has shared with others.
        # need to double check on this one
    
    has_many :comments, 
        foreign_key: :author_id,
        class_name: :Comment,
        inverse_of: :author, 
        dependent: :destroy


end