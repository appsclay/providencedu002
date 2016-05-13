class BannerSectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_banner_section, only: [:show, :edit, :update, :destroy]

  # GET /banner_sections
  # GET /banner_sections.json
  def index
    @banner_sections = BannerSection.all
  end

  # GET /banner_sections/1
  # GET /banner_sections/1.json
  def show
  end

  # GET /banner_sections/new
  def new
    @banner_section = BannerSection.new
  end

  # GET /banner_sections/1/edit
  def edit
  end

  # POST /banner_sections
  # POST /banner_sections.json
  def create
    @banner_section = BannerSection.new(banner_section_params)

    respond_to do |format|
      if @banner_section.save
        format.html { redirect_to @banner_section, notice: 'Banner section was successfully created.' }
        format.json { render :show, status: :created, location: @banner_section }
      else
        format.html { render :new }
        format.json { render json: @banner_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banner_sections/1
  # PATCH/PUT /banner_sections/1.json
  def update
    respond_to do |format|
      if @banner_section.update(banner_section_params)
        format.html { redirect_to @banner_section, notice: 'Banner section was successfully updated.' }
        format.json { render :show, status: :ok, location: @banner_section }
      else
        format.html { render :edit }
        format.json { render json: @banner_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banner_sections/1
  # DELETE /banner_sections/1.json
  def destroy
    @banner_section.destroy
    respond_to do |format|
      format.html { redirect_to banner_sections_url, notice: 'Banner section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banner_section
      @banner_section = BannerSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banner_section_params
      params.require(:banner_section).permit(:banner_img, :banner_heading, :banner_button_text, :banner_button_url, :banner_button2_text, :banner_button2_url)
    end
end
