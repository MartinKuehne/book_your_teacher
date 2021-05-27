class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @lessons = current_user.lessons
    @bookings = current_user.bookings
    @review = Review.new
    @active_tab = params[:active_tab]
  end

  def profile
    @user = current_user
    @language = Language.new
    @languages = Language.all
  end
end
