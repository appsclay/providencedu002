class CarrerPagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_carrer_page, only: [:show, :edit, :update, :destroy]

  # GET /carrer_pages
  # GET /carrer_pages.json
  def index
    @carrer_pages = CarrerPage.all
  end

  # GET /carrer_pages/1
  # GET /carrer_pages/1.json
  def show
  end

  # GET /carrer_pages/new
  def new
    @carrer_page = CarrerPage.new
  end

  # GET /carrer_pages/1/edit
  def edit
  end

  # POST /carrer_pages
  # POST /carrer_pages.json
  def create
    @carrer_page = CarrerPage.new(carrer_page_params)

    respond_to do |format|
      if @carrer_page.save
        format.html { redirect_to @carrer_page, notice: 'Carrer page was successfully created.' }
        format.json { render :show, status: :created, location: @carrer_page }
      else
        format.html { render :new }
        format.json { render json: @carrer_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrer_pages/1
  # PATCH/PUT /carrer_pages/1.json
  def update
    respond_to do |format|
      if @carrer_page.update(carrer_page_params)
        format.html { redirect_to @carrer_page, notice: 'Carrer page was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrer_page }
      else
        format.html { render :edit }
        format.json { render json: @carrer_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrer_pages/1
  # DELETE /carrer_pages/1.json
  def destroy
    @carrer_page.destroy
    respond_to do |format|
      format.html { redirect_to carrer_pages_url, notice: 'Carrer page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrer_page
      @carrer_page = CarrerPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrer_page_params
      params.require(:carrer_page).permit(:img, :heading, :highlight_img1, :highlight_h1, :highlight_p1, :highlight_img2, :highlight_h2, :highlight_p2, :highlight_img3, :highlight_h3, :highlight_p3, :highlight_img4, :highlight_h4, :highlight_p4, :hr_heading, :hr_email)
    end
end
