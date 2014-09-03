class CommentsController < ApplicationController
  def index
    @comment = Comment.all
  end

  def new
    @restaurant = find_restaurant
    @user = current_user
    @comment = Comment.new
  end

  def create
    @restaurant = find_restaurant
    @comment = @restaurant.comments.build(comment_params)

    if @comment.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_comment
    Comment.find(params[:id])
  end

  def find_restaurant
    Restaurant.find(params[:restaurant_id])
  end

  def find_user
    User.find(params[:user_id])
  end
end
