class PostsController < ApplicationController
 def new
  end

  def create
  	@post = Letter.new(post_params)
  	@post.save
  	redirect_to @post
  end

  
  def show
  	@post = Letter.find(params[:id])
  end

  def index
  	@posts = Letter.all
  end

  private

  def post_params
  	params.require(:post).permit(:title,:text)
  end

end
