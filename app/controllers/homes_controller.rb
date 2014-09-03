class HomesController < ApplicationController
  before_action :check_if_signed_in

  def show
    @user = User.new
  end

  def check_if_signed_in
    if signed_in?
      redirect_to restaurants_path
    end
  end


end
