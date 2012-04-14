class DegreesController < ApplicationController
  # GET /degrees
  def index
    @degrees = Degree.all
  end

  # GET /degrees/1
  def show
    @degree = Degree.find(params[:id])
  end

  # GET /degrees/new
  def new
    @degree = Degree.new
  end

  # GET /degrees/1/edit
  def edit
    @degree = Degree.find(params[:id])
  end

  # POST /degrees
  def create
    @degree = Degree.new(params[:degree])   
    if @degree.save
      redirect_to @degree, notice: 'Degree was successfully created.' 
    else
      render action: "new" 
    end
  end

  # PUT /degrees/1
  def update
    @degree = Degree.find(params[:id])
    if @degree.update_attributes(params[:degree])
      redirect_to @degree, notice: 'Degree was successfully updated.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /degrees/1
  def destroy
    @degree = Degree.find(params[:id])
    @degree.destroy
    redirect_to degrees_url 
  end
end
