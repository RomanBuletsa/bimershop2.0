class PostsController < ApplicationController

before_action :set_post, only: [:edit, :update, :destroy, :show]

def show
end

def index
@posts = Post.all
@posts.each do |post|
end

end

def new
@post = Post.new
end

def create
params[:post][:category_id] = params[:category_id]
params[:post][:post]
@post = Post.create(post_params)
redirect_to posts_path
end


private

def post_params
params.require(:post).permit(:category_id, :name)
end

def set_post
@post = Post.find(params[:id])
end

end
