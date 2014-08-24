class CommentsController < ApplicationController
  def new
    @restaurant = find_restaurant
    @user = find_user
    @comment = Comment.new
  end

  def create
    @restaurant = find_restaurant
    @comment = @restaurant.build_comment(comment_params)

    if @comment.save
      redirect_to @restaurant.name 
    else
      render :new
    end
  end

  def show
    @comments = find_comment
  end

  private

  def comment_params
    params.require(:content).permit(:text)
  end

  def find_comment
    Comment.find(params[:id])
  end

  def find_restaurant
    Restaurant.find(params[:id])
  end

  def find_user
    User.find(params[:user_id])
  end
end
