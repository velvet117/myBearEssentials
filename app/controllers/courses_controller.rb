class CoursesController < ApplicationController
  
  # GET /courses
  def index
    @courses = Course.all
  end

  # GET /courses/1
  def show
    @course = Course.find(params[:id])
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  def create
    @course = Course.new(params[:course])

    if @course.save
      redirect_to @course, notice: 'Course was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /courses/1
  def update
    @course = Course.find(params[:id])
 
    if @course.update_attributes(params[:course])
      redirect_to @course, notice: 'Course was successfully updated.' 
    else
      render action: "edit"     
    end
  end

  # DELETE /courses/1
  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_url
  end
end
