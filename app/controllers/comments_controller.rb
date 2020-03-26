class CommentsController < ApplicationController
    def create
        p "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
        p params[:post_id]
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.user_id = session[:id]
        p @comment.save
        if @comment
          redirect_to @comment.post
        else
          flash.now[:danger] = "error"
        end
    end 
    def comment_params
        params.permit(:content, :post_id)
    end

    def destroy
        @comment = Comment.find(params[:id])
        @post = @comment.post
        @comment.destroy
        redirect_to @post
    end
end
