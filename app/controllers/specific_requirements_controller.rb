class SpecificRequirementsController < ApplicationController
  # GET /specific_requirements
  # GET /specific_requirements.json
  def index
    @specific_requirements = SpecificRequirement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @specific_requirements }
    end
  end

  # GET /specific_requirements/1
  # GET /specific_requirements/1.json
  def show
    @specific_requirement = SpecificRequirement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @specific_requirement }
    end
  end

  # GET /specific_requirements/new
  # GET /specific_requirements/new.json
  def new
    @specific_requirement = SpecificRequirement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @specific_requirement }
    end
  end

  # GET /specific_requirements/1/edit
  def edit
    @specific_requirement = SpecificRequirement.find(params[:id])
  end

  # POST /specific_requirements
  # POST /specific_requirements.json
  def create
    @specific_requirement = SpecificRequirement.new(params[:specific_requirement])

    respond_to do |format|
      if @specific_requirement.save
        format.html { redirect_to @specific_requirement, notice: 'Specific requirement was successfully created.' }
        format.json { render json: @specific_requirement, status: :created, location: @specific_requirement }
      else
        format.html { render action: "new" }
        format.json { render json: @specific_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /specific_requirements/1
  # PUT /specific_requirements/1.json
  def update
    @specific_requirement = SpecificRequirement.find(params[:id])

    respond_to do |format|
      if @specific_requirement.update_attributes(params[:specific_requirement])
        format.html { redirect_to @specific_requirement, notice: 'Specific requirement was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @specific_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_requirements/1
  # DELETE /specific_requirements/1.json
  def destroy
    @specific_requirement = SpecificRequirement.find(params[:id])
    @specific_requirement.destroy

    respond_to do |format|
      format.html { redirect_to specific_requirements_url }
      format.json { head :ok }
    end
  end
end
