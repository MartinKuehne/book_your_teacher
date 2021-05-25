class SessionsController < ApplicationController
  before_action set_session, only: [:show, :update, :edit, :destroy]
  
  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    @user = User.find(params[:user_id])
    @session.user = @user
    if @session.save!
      redirect_to @session, notice: "Session was successfully created"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @session.update(params[:session])
    redirect_to @session, notice: "Session was successfully updated"
  end

  def destroy
    @session.destroy
    redirect_to sessions_path, notice: "Session was successfully deleted"
  end

  private

  def set_session
    @session = Session.find(params[:session_id])
  end

  def session_params
    params.require(:session).permit(:name, :description, :price)
  end
end
