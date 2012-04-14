class RecordsController < ApplicationController
  # GET /records
  def index
    @records = Record.all
  end

  # GET /records/1
  def show
    @record = Record.find(params[:id])
  end

  # GET /records/new
  def new
    @record = Record.new
  end

  # GET /records/1/edit
  def edit
    @record = Record.find(params[:id])
  end

  # POST /records
  def create
    @record = Record.new(params[:record])
    if @record.save
      redirect_to @record, notice: 'Record was successfully created.'
    else
      render action: "new" 
    end
  end

  # PUT /records/1
  def update
    @record = Record.find(params[:id])
    if @record.update_attributes(params[:record])
      redirect_to @record, notice: 'Record was successfully updated.' 
    else
      render action: "edit"
    end
  end

  # DELETE /records/1
  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_url 
  end
end
