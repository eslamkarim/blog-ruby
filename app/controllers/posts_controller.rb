class PostsController < ApplicationController
    def index
        @posts = Post.order(updated_at: :desc)

    end
    def new
    end

    def create
        # @post = Post.new
        # @post.title = params[:title]
        # @post.description = params[:description]
        # @post.users_id = session[:id]
        # @post.save
        User.find(session[:id]).posts.create(post_params)
        redirect_to :root
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(comment_params)
        redirect_to :root

    end
    def post_params
        params.permit(:title, :description)
    end
    
    def comment_params
        params.require(:post).permit(:title, :description)
    end

    def show
       @post = Post.find(params[:id]) 
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to :root
    end
end
