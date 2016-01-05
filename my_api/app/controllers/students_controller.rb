class StudentsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  def index
    @students = Student.all
    render json: @students
  end

  def show
    @student = Student.find(params[:id])
    @badges = Badge.where(student_id: params[:id])
    render json: @badges
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student, status: :created, location: @student
    else
      err
    end
  end

  def update
    if @student.update(student_params)
      head :no_content
    else
      err
    end
  end

  def destroy
    @student.destroy
    head :no_content
  end

  private

  def set_post
    @student = Student.find(params[:id])
  end

  def student_params
    params.permit(:name)
  end

  def err
    render json: @student.errors, status: :unprocessable_entity
  end
end