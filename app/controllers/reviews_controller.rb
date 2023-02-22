class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # @restaurant = Restaurant.find(params[:restaurant_id])
    review = Review.new(review_params)
    review.restaurant = set_restaurant
    review.save
    redirect_to restaurant_path(Restaurant.find(params[:restaurant_id]))
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
