class DepartmentsController < ApplicationController
  # GET /departments
  def index
    @departments = Department.all
  end

  # GET /departments/1
  def show
    @department = Department.find(params[:id])
  end

  # GET /departments/new
  def new
    @department = Department.new
  end

  # GET /departments/1/edit
  def edit
    @department = Department.find(params[:id])
  end

  # POST /departments
  def create
    @department = Department.new(params[:department])
    if @department.save
      redirect_to @department, notice: 'Department was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /departments/1
  def update
    @department = Department.find(params[:id])
    if @department.update_attributes(params[:department])
      redirect_to @department, notice: 'Department was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /departments/1
  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    redirect_to departments_url 
  end
end
