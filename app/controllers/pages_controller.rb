class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @lessons = current_user.lessons
  end

  def profile
    @user = User.find(params[:id])
    @language = Language.new
    @languages = Language.all
  end
end
