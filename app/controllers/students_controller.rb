class StudentsController < ApplicationController

  def index
    if params[:name]
      byebug
      render json: Student.find_by_first_name(params[:first_name])
    elsif params[:last_name]
      render json: Student.find_by(last_name: params[:last_name])
    else
     render json: Student.all
    end

  end

  def show
    render json: Student.find(params[:id])
  end



end
