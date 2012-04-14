class RequirementsController < ApplicationController
  # GET /requirements
  def index
    @requirements = Requirement.all
  end

  # GET /requirements/1
  def show
    @requirement = Requirement.find(params[:id])
  end

  # GET /requirements/new
  def new
    @requirement = Requirement.new
  end

  # GET /requirements/1/edit
  def edit
    @requirement = Requirement.find(params[:id])
  end

  # POST /requirements
  def create
    @requirement = Requirement.new(params[:requirement])
    if @requirement.save
      redirect_to @requirement, notice: 'Requirement was successfully created.' 
    else
      render action: "new" 
    end
  end

  # PUT /requirements/1
  def update
    @requirement = Requirement.find(params[:id])
    if @requirement.update_attributes(params[:requirement])
      redirect_to @requirement, notice: 'Requirement was successfully updated.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /requirements/1
  def destroy
    @requirement = Requirement.find(params[:id])
    @requirement.destroy
    redirect_to requirements_url
  end
end
