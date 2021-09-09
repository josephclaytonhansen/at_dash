class MaterialsController < ApplicationController
  before_action :set_material, only: %i[ show edit update destroy ]

  # GET /materials or /materials.json
  def index
    @materials = Material.all
  end

  # GET /materials/1 or /materials/1.json
  def show
  end

  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
  end


  # POST /materials or /materials.json
  def create
    @material = Material.new(material_params)

    respond_to do |format|
      if @material.save
        format.html { redirect_to @material, notice: "Material was successfully created." }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  def make_pair
    @material = Material.find(1)
    @material.thick_elastic -= 1
    @material.thin_elastic -= 1
    @material.fat_quarters -= 1
    @material.save
    redirect_to :root
  end 

  def ship_pair
    @material = Material.find(1)
    @material.mailers -= 1
    @material.stamps -= 1
    @material.save
    redirect_to :root
  end
  
  def buy_thin_elastic
    @material = Material.find(1)
    @material.thin_elastic += 5
    @material.save
    redirect_to :root
  end

  def buy_thick_elastic
    @material = Material.find(1)
    @material.thick_elastic += 10
    @material.save
    redirect_to :root
  end

  def buy_mailers
    @material = Material.find(1)
    @material.mailers += 25
    @material.save
    redirect_to :root
  end

  # PATCH/PUT /materials/1 or /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to @material, notice: "Material was successfully updated." }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1 or /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to materials_url, notice: "Material was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def material_params
      params.require(:material).permit(:thin_elastic, :thick_elastic, :fat_quarters, :mailers, :stamps, :completed_pairs)
    end
end
