class ConsultantServicesController < ApplicationController
  # GET /consultant_services
  # GET /consultant_services.json
  def index
    @consultant_services = ConsultantService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consultant_services }
    end
  end

  # GET /consultant_services/1
  # GET /consultant_services/1.json
  def show
    @consultant_service = ConsultantService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consultant_service }
    end
  end

  # GET /consultant_services/new
  # GET /consultant_services/new.json
  def new
    @consultant_service = ConsultantService.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consultant_service }
    end
  end

  # GET /consultant_services/1/edit
  def edit
    @consultant_service = ConsultantService.find(params[:id])
  end

  # POST /consultant_services
  # POST /consultant_services.json
  def create
    @consultant_service = ConsultantService.new(params[:consultant_service])

    respond_to do |format|
      if @consultant_service.save
        format.html { redirect_to @consultant_service, notice: 'Consultant service was successfully created.' }
        format.json { render json: @consultant_service, status: :created, location: @consultant_service }
      else
        format.html { render action: "new" }
        format.json { render json: @consultant_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consultant_services/1
  # PUT /consultant_services/1.json
  def update
    @consultant_service = ConsultantService.find(params[:id])

    respond_to do |format|
      if @consultant_service.update_attributes(params[:consultant_service])
        format.html { redirect_to @consultant_service, notice: 'Consultant service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consultant_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultant_services/1
  # DELETE /consultant_services/1.json
  def destroy
    @consultant_service = ConsultantService.find(params[:id])
    @consultant_service.destroy

    respond_to do |format|
      format.html { redirect_to consultant_services_url }
      format.json { head :no_content }
    end
  end
end
