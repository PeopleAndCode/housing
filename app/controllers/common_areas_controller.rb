class CommonAreasController < ApplicationController
  before_action :set_common_area, only: [:show, :edit, :update, :destroy]

  # GET /common_areas
  # GET /common_areas.json
  def index
    @common_areas = CommonArea.all
  end

  # GET /common_areas/1
  # GET /common_areas/1.json
  def show
  end

  # GET /common_areas/new
  def new
    @common_area = CommonArea.new
  end

  # GET /common_areas/1/edit
  def edit
  end

  # POST /common_areas
  # POST /common_areas.json
  def create
    @common_area = CommonArea.new(common_area_params)

    respond_to do |format|
      if @common_area.save
        format.html { redirect_to root_path, notice: 'Common area was successfully created.' }
        format.json { render action: 'show', status: :created, location: @common_area }
      else
        format.html { render action: 'new' }
        format.json { render json: @common_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /common_areas/1
  # PATCH/PUT /common_areas/1.json
  def update
    respond_to do |format|
      if @common_area.update(common_area_params)
        format.html { redirect_to @common_area, notice: 'Common area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @common_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /common_areas/1
  # DELETE /common_areas/1.json
  def destroy
    @common_area.destroy
    respond_to do |format|
      format.html { redirect_to common_areas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_common_area
      @common_area = CommonArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def common_area_params
      params.require(:common_area).permit(:repair_type, :main_location, :sub_location, :floor, :user_id, :submissions_id)
    end
end
