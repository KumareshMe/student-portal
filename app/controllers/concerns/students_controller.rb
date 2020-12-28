class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "Your Details was saved successfully"
      redirect_to student_path(@student)
    else
      render 'new'
    end
  end

  def update
    if @student.update(student_params)
      flash[:notice] = "Your Details was updated successfully"
      redirect_to @student
    else
      render 'edit'
    end
  end
  
  def destroy
    @student.destroy
    redirect_to students_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:student_name, :email_id, 
                                   :address, :contact_number, :marks)
  end
end