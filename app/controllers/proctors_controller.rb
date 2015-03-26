class ProctorsController < ApplicationController
  # GET /proctors
  # GET /proctors.json
  def index
    @proctors = Proctor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proctors }
    end
  end

  # GET /proctors/1
  # GET /proctors/1.json
  def show
    @proctor = Proctor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proctor }
    end
  end

  # GET /proctors/new
  # GET /proctors/new.json
  def new
    @proctor = Proctor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proctor }
    end
  end

  # GET /proctors/1/edit
  def edit
    @proctor = Proctor.find(params[:id])
  end

  # POST /proctors
  # POST /proctors.json
  def create
    @proctor = Proctor.new(params[:proctor])

    respond_to do |format|
      if @proctor.save
        format.html { redirect_to @proctor, notice: 'Proctor was successfully created.' }
        format.json { render json: @proctor, status: :created, location: @proctor }
      else
        format.html { render action: "new" }
        format.json { render json: @proctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proctors/1
  # PUT /proctors/1.json
  def update
    @proctor = Proctor.find(params[:id])

    respond_to do |format|
      if @proctor.update_attributes(params[:proctor])
        format.html { redirect_to @proctor, notice: 'Proctor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proctors/1
  # DELETE /proctors/1.json
  def destroy
    @proctor = Proctor.find(params[:id])
    @proctor.destroy

    respond_to do |format|
      format.html { redirect_to proctors_url }
      format.json { head :no_content }
    end
  end
end
