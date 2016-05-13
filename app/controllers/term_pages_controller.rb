class TermPagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_term_page, only: [:show, :edit, :update, :destroy]

  # GET /term_pages
  # GET /term_pages.json
  def index
    @term_pages = TermPage.all
  end

  # GET /term_pages/1
  # GET /term_pages/1.json
  def show
  end

  # GET /term_pages/new
  def new
    @term_page = TermPage.new
  end

  # GET /term_pages/1/edit
  def edit
  end

  # POST /term_pages
  # POST /term_pages.json
  def create
    @term_page = TermPage.new(term_page_params)

    respond_to do |format|
      if @term_page.save
        format.html { redirect_to @term_page, notice: 'Term page was successfully created.' }
        format.json { render :show, status: :created, location: @term_page }
      else
        format.html { render :new }
        format.json { render json: @term_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_pages/1
  # PATCH/PUT /term_pages/1.json
  def update
    respond_to do |format|
      if @term_page.update(term_page_params)
        format.html { redirect_to @term_page, notice: 'Term page was successfully updated.' }
        format.json { render :show, status: :ok, location: @term_page }
      else
        format.html { render :edit }
        format.json { render json: @term_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_pages/1
  # DELETE /term_pages/1.json
  def destroy
    @term_page.destroy
    respond_to do |format|
      format.html { redirect_to term_pages_url, notice: 'Term page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_page
      @term_page = TermPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_page_params
      params.require(:term_page).permit(:script)
    end
end
