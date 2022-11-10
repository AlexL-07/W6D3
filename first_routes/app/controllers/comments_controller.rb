class CommentsController < ApplicationController
    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment
        else
            render json: comment.errors.full_messages, status: 422
        end
    end

    def index
        if params[:author_id]
            comment = Comment.comments_by_author_id(params[:author_id])
            render json: comment
        elsif params[:artwork_id]
            comment = Comment.comments_by_artwork_id(params[:artwork_id])
            render json: comment
        end
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        render text: "comment successfully deleted"
    end

    private

    def comment_params
        params.require(:comments).permit(:author_id, :artist_id, :body)
    end

end