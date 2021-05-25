class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.session = @session
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to session_path(@sessions)
  end

  def destroy
    @booking.destroy
    redirect_to session_path(@booking.session)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_session
    @session = Session.find(params[:session_id])
  end
end
