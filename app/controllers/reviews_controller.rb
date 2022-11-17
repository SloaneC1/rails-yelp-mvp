class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path
    end
  end
end
