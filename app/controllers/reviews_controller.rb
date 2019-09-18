class ReviewsController < ApplicationController
  def new
    # raise
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # raise
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(strong_params_review)
    # @review.restaurant_id = @restaurant.id
    @review.restaurant = @restaurant

    if @review.save
    redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end



  private

  def strong_params_review
    params.require(:review).permit(:content)
  end
end
