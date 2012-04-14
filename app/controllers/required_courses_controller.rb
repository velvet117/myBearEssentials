class RequiredCoursesController < ApplicationController
  # GET /required_courses
  def index
    @required_courses = RequiredCourse.all
  end

  # GET /required_courses/1
  def show
    @required_course = RequiredCourse.find(params[:id])
  end

  # GET /required_courses/new
  def new
    @required_course = RequiredCourse.new
  end

  # GET /required_courses/1/edit
  def edit
    @required_course = RequiredCourse.find(params[:id])
  end

  # POST /required_courses
  def create
    @required_course = RequiredCourse.new(params[:required_course])
    if @required_course.save
      redirect_to @required_course, notice: 'Required course was successfully created.' 
    else
      render action: "new" 
    end
  end

  # PUT /required_courses/1
  def update
    @required_course = RequiredCourse.find(params[:id])
    if @required_course.update_attributes(params[:required_course])
      redirect_to @required_course, notice: 'Required course was successfully updated.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /required_courses/1
  def destroy
    @required_course = RequiredCourse.find(params[:id])
    @required_course.destroy
    redirect_to required_courses_url 
  end
end
