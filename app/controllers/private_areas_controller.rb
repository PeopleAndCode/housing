class PrivateAreasController < ApplicationController
  before_action :set_private_area, only: [:show, :edit, :update, :destroy]

  # GET /private_areas
  # GET /private_areas.json
  def index
    @private_areas = PrivateArea.all
  end

  # GET /private_areas/1
  # GET /private_areas/1.json
  def show
  end

  # GET /private_areas/new
  def new
    @private_area = PrivateArea.new
  end

  # GET /private_areas/1/edit
  def edit
  end

  # POST /private_areas
  # POST /private_areas.json
  def create
    @private_area = PrivateArea.new(private_area_params)

    respond_to do |format|
      if @private_area.save
        format.html { redirect_to @private_area, notice: 'Private area was successfully created.' }
        format.json { render action: 'show', status: :created, location: @private_area }
      else
        format.html { render action: 'new' }
        format.json { render json: @private_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_areas/1
  # PATCH/PUT /private_areas/1.json
  def update
    respond_to do |format|
      if @private_area.update(private_area_params)
        format.html { redirect_to @private_area, notice: 'Private area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @private_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_areas/1
  # DELETE /private_areas/1.json
  def destroy
    @private_area.destroy
    respond_to do |format|
      format.html { redirect_to private_areas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_area
      @private_area = PrivateArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_area_params
      params.require(:private_area).permit(:type, :main_location, :sub_location)
    end
end
