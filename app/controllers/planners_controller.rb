class PlannersController < ApplicationController
  # GET /planners
  def index
    @planners = Planner.all
  end

  # GET /planners/1
  def show
    @planner = Planner.find(params[:id])
  end

  # GET /planners/new
  def new
    @planner = Planner.new
  end

  # GET /planners/1/edit
  def edit
    @planner = Planner.find(params[:id])
  end

  # POST /planners
  def create
    @planner = Planner.new(params[:planner])
    if @planner.save
      redirect_to @planner, notice: 'Planner was successfully created.' 
    else
      render action: "new"
    end
  end

  # PUT /planners/1
  def update
    @planner = Planner.find(params[:id])
    if @planner.update_attributes(params[:planner])
      redirect_to @planner, notice: 'Planner was successfully updated.'
    else
      render action: "edit" 
    end
  end

  # DELETE /planners/1
  def destroy
    @planner = Planner.find(params[:id])
    @planner.destroy
    redirect_to planners_url 
  end
end
