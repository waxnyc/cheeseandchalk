class SearchesController < ApplicationController
  def show
    @restaurants = Restaurant.search(params[:search][:name])
  end
end
