class FishSpeciesController < ApplicationController
  before_action :set_fish_specy, only: [:show, :edit, :update, :destroy]

  # GET /fish_species
  # GET /fish_species.json
  def index
    @fish_species = FishSpecy.all
  end

  # GET /fish_species/1
  # GET /fish_species/1.json
  def show
  end

  # GET /fish_species/new
  def new
    @fish_specy = FishSpecy.new
  end

  # GET /fish_species/1/edit
  def edit
  end

  # POST /fish_species
  # POST /fish_species.json
  def create
    @fish_specy = FishSpecy.new(fish_specy_params)

    respond_to do |format|
      if @fish_specy.save
        format.html { redirect_to @fish_specy, notice: 'Fish specy was successfully created.' }
        format.json { render :show, status: :created, location: @fish_specy }
      else
        format.html { render :new }
        format.json { render json: @fish_specy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fish_species/1
  # PATCH/PUT /fish_species/1.json
  def update
    respond_to do |format|
      if @fish_specy.update(fish_specy_params)
        format.html { redirect_to @fish_specy, notice: 'Fish specy was successfully updated.' }
        format.json { render :show, status: :ok, location: @fish_specy }
      else
        format.html { render :edit }
        format.json { render json: @fish_specy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fish_species/1
  # DELETE /fish_species/1.json
  def destroy
    @fish_specy.destroy
    respond_to do |format|
      format.html { redirect_to fish_species_url, notice: 'Fish specy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fish_specy
      @fish_specy = FishSpecy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fish_specy_params
      params.fetch(:fish_specy, {})
    end
end
