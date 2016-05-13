class PmLogosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pm_logo, only: [:show, :edit, :update, :destroy]

  # GET /pm_logos
  # GET /pm_logos.json
  def index
    @pm_logos = PmLogo.all
    @pm_texts = PmText.all
    
  end

  # GET /pm_logos/1
  # GET /pm_logos/1.json
  def show
  end

  # GET /pm_logos/new
  def new
    @pm_logo = PmLogo.new
  end

  # GET /pm_logos/1/edit
  def edit
  end

  # POST /pm_logos
  # POST /pm_logos.json
  def create
    @pm_logo = PmLogo.new(pm_logo_params)

    respond_to do |format|
      if @pm_logo.save
        format.html { redirect_to @pm_logo, notice: 'Pm logo was successfully created.' }
        format.json { render :show, status: :created, location: @pm_logo }
      else
        format.html { render :new }
        format.json { render json: @pm_logo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pm_logos/1
  # PATCH/PUT /pm_logos/1.json
  def update
    respond_to do |format|
      if @pm_logo.update(pm_logo_params)
        format.html { redirect_to @pm_logo, notice: 'Pm logo was successfully updated.' }
        format.json { render :show, status: :ok, location: @pm_logo }
      else
        format.html { render :edit }
        format.json { render json: @pm_logo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pm_logos/1
  # DELETE /pm_logos/1.json
  def destroy
    @pm_logo.destroy
    respond_to do |format|
      format.html { redirect_to pm_logos_url, notice: 'Pm logo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pm_logo
      @pm_logo = PmLogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pm_logo_params
      params.require(:pm_logo).permit(:position, :logo)
    end
end
