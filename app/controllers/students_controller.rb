class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    # byebug
    if @student.active
      @status = "This student is currently active."

    else
      @status = "This student is currently inactive."

    end

    # byebug
    # render "show"
  end

  def active
    @student = Student.find(params[:id])

    # byebug

    if @student.active
      @student.active = false
    else
      @student.active = true
    end
    @student.save

    redirect_to student_path(@student)

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
