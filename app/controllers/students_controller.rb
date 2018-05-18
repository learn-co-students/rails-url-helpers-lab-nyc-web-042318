class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
      if @student.active == false
    @str =   "This student is currently inactive."
      elsif @student.active == true
    @str =   "This student is currently active."
    end

    "students/show"

  end

  def activate
    @student = Student.find(params[:id])
    @student.activate

    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
