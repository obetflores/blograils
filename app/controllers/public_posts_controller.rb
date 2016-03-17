class PublicPostsController < ApplicationController
  layout 'public'

  def index
    @posts = Post.published
  end

  def show
    @post = Post.find_by url: (params[:url])
    @comment= Comment.new
  end

  def create_comment
    @comment = Comment.new name: params[:name], content: params[:content], post_id: params[:post_id]

    if @comment.save
      redirect_to :back, notice: "El comentario fue creado exitosamente"
    end
  end


  def posts_category
    @category = Category.find(params[:id])
    @posts = @category.posts.published
  end
end
