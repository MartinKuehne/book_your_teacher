class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy]
  before_action :set_booking, only: [:create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    flash[:notice] = @review.errors.full_messages.to_sentence unless @review.save
    redirect_to dashboard_path
  end

  def destroy
    @review.destroy
    redirect_to dashboard_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_booking
    @booking = Booking.find(params[:review][:booking_id].to_i)
  end
end
