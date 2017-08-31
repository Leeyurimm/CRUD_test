class PostsController < ApplicationController
    def new
        # 사용자가 데이터를 입력할 화면
        # 자동으로 액션화면과 같은화면을 사용자에게 보여주라
    end
    
    def create
        #입력받은 데이터를 실제 DB 저장할 액션.
        @post = Post.new
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        redirect_to "/posts/show/#{@post.id}"
    end
    
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:post_id])
        @comments = Comment.where(post_id: params[:post_id])
    end
    
    def edit
        @post = Post.find(params[:post_id])
    end
    
    def update
        @post = Post.find(params[:post_id])
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        redirect_to "/posts/show/#{params[:post_id]}"
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @post.destroy
        redirect_to '/'
    end
end
