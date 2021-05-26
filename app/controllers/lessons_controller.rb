class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :update, :edit, :destroy]

  def index
    @lessons = Lesson.all
    @users = User.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user_id = current_user.id
    if @lesson.save
      redirect_to lesson_path(@lesson), notice: "Lesson was successfully created"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @lesson.update(params[:lesson])
    redirect_to @lesson, notice: "Lesson was successfully updated"
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_path, notice: "Lesson was successfully deleted"
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:name, :description, :price)
  end
end
