class StudentsController < ApplicationController

  def index
    students = Student.all .filter {|s| s.first_name.downcase == params[:name] || s.last_name.downcase == params[:name]}
    render json: students
  end

  def pliss
    render json: Student.find(params[:id])
  end

end
