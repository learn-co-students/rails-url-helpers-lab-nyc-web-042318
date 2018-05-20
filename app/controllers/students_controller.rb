class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    # byebug
    @student = Student.find(params[:id])
    if @student.active == true
      @student.update(:active => false)
      @student.save
    else
      @student.update(:active => true)
      @student.save
    end
    redirect_to show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
