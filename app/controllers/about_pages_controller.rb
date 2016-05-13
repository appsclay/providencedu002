class AboutPagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_about_page, only: [:show, :edit, :update, :destroy]

  # GET /about_pages
  # GET /about_pages.json
  def index
    @about_pages = AboutPage.all
  end

  # GET /about_pages/1
  # GET /about_pages/1.json
  def show
  end

  # GET /about_pages/new
  def new
    @about_page = AboutPage.new
  end

  # GET /about_pages/1/edit
  def edit
  end

  # POST /about_pages
  # POST /about_pages.json
  def create
    @about_page = AboutPage.new(about_page_params)

    respond_to do |format|
      if @about_page.save
        format.html { redirect_to @about_page, notice: 'About page was successfully created.' }
        format.json { render :show, status: :created, location: @about_page }
      else
        format.html { render :new }
        format.json { render json: @about_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_pages/1
  # PATCH/PUT /about_pages/1.json
  def update
    respond_to do |format|
      if @about_page.update(about_page_params)
        format.html { redirect_to @about_page, notice: 'About page was successfully updated.' }
        format.json { render :show, status: :ok, location: @about_page }
      else
        format.html { render :edit }
        format.json { render json: @about_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_pages/1
  # DELETE /about_pages/1.json
  def destroy
    @about_page.destroy
    respond_to do |format|
      format.html { redirect_to about_pages_url, notice: 'About page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_page
      @about_page = AboutPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_page_params
      params.require(:about_page).permit(:img, :about, :vision, :mission, :extra)
    end
end
