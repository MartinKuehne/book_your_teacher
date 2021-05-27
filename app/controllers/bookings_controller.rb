class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :show, :update]
  before_action :set_lesson, only: [:create]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.lesson = @lesson
    @booking.user = current_user
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to dashboard_path
  end

  def destroy
    @booking.destroy
    redirect_to lesson_path(@booking.lesson)
  end

  def update
    @booking.status = params[:status]
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end
end
