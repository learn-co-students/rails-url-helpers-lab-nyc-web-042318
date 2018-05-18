class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
      @student = Student.find(params[:id])
      if @student.active == false
      @student.update(active: true)
    else @student.update(active: false)
      end
    redirect_to :student
  end

  # def back
  #   @student = Student.find(params[:id])
  #   redirect_to "students/#{@student.id}"
  # end

  private

    def set_student
      # byebug
      @student = Student.find(params[:id])
    end
end
