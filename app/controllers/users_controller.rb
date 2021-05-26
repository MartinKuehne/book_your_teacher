class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @language = Language.new
    @languages = Language.all
  end
end
