class PostsController < ApplicationController
  def index
 end

  def new
    @post = Post.new
 end


 def create
   @post = Post.new post_params

   if @post.save
     redirect_to @post, notice: "Create Post Saved"

   else

     render 'new', notice: "Post Failed"
   end
end

private

def post_params
  params.require(:post).permit(:title, :content)
 end
end
