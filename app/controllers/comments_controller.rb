class CommentsController < ApplicationController
    before_action :authenticate_user!
    def create
        new_comment = Comment.new(content: params[:content],
                                picture_id: params[:picture_id],
                                user_id: current_user.id)
        new_comment.save
        redirect_to root_path
    end
    
    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        redirect_to root_path
    end
    

end
