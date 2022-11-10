class Comment < ApplicationRecord
    belongs_to :author, 
        foreign_key: :author_id,
        class_name: :User
        
    belongs_to :artwork,
        foreign_key: :artwork_id,
        class_name: :Artwork

    def self.comments_by_author_id(id)
        Comment
            .joins(:author)
            .where('users.id = (?)', id)
    end

     def self.comments_by_artwork_id(id)
        Comment
            .joins(:artwork)
            .where('artworks.id = (?)', id)
    end


end