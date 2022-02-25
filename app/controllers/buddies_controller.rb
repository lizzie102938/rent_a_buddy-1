class BuddiesController < ApplicationController
  def index
    if params[:search].present?
      @buddies = Buddy.search_by_city_and_hobby(params[:search])
    else
      @buddies = Buddy.all
    end
  end

  def show
    @buddy = Buddy.find(params[:id])
    # @review = Review.new
  end
end
