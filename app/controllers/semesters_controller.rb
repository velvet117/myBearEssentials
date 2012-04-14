class SemestersController < ApplicationController
  # GET /semesters
  def index
    @semesters = Semester.all
  end

  # GET /semesters/1
  def show
    @semester = Semester.find(params[:id])
  end

  # GET /semesters/new
  def new
    @semester = Semester.new
  end

  # GET /semesters/1/edit
  def edit
    @semester = Semester.find(params[:id])
  end

  # POST /semesters
  def create
    @semester = Semester.new(params[:semester])
    if @semester.save
      redirect_to @semester, notice: 'Semester was successfully created.' 
    else
      render action: "new"
    end
  end

  # PUT /semesters/1
  def update
    @semester = Semester.find(params[:id])
    if @semester.update_attributes(params[:semester])
      redirect_to @semester, notice: 'Semester was successfully updated.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /semesters/1
  def destroy
    @semester = Semester.find(params[:id])
    @semester.destroy
    redirect_to semesters_url 
  end
end
