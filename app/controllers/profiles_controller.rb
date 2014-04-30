class ProfilesController < ApplicationController
  require 'crimp'
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @location_option = params[:location_option]

    puts params
    puts @location_option

    redirect_target = case @location_option
      when 'unit'
        new_private_area_path(@profile)
      when 'common'
        new_common_area_path(@profile)
      else
        new_profile_path(@profile)
    end
    
    puts redirect_target 
    
    respond_to do |format|
      if @profile.save
        format.html { redirect_to redirect_target, notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
        Crimp.stringify({:a => {:b => 'b', :c => 'c'}, :d => 'd'})

        # => [\"aSymbol=>[\\\"bSymbol=>b\\\", \\\"cSymbol=>c\\\"]Array\",\"dSymbol=>d\"]Array"

        Crimp.signature({:a => {:b => 'b', :c => 'c'}, :d => 'd'})

        # => "68d07febc4f47f56fa6ef5de063a77b1"
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :building, :unit, :location_option, :location_common, :location_private)
    end
end
