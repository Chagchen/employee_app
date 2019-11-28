# frozen_string_literal: true

class EmployeesController < ApplicationController
 before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def edit 
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      flash[:success] = 'New employee entry was successfully created'
      redirect_to root_path(@employee)
    else
      render 'new'
    end
  end

  def update
    if @employee.update(employee_params)
      flash[:success] = 'Employee data was successfully updated'
      redirect_to employee_path(@employee)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @employee.destroy
    flash[:danger] = 'Employee has been deleted!'
    redirect_to employees_path
  end

  private
  
  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:name, :email, :position, :phone_number, :salary, :date_hired)
  end


end
