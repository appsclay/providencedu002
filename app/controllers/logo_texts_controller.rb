class LogoTextsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_logo_text, only: [:show, :edit, :update, :destroy]

  # GET /logo_texts
  # GET /logo_texts.json
  # def index
  #   @logo_texts = LogoText.all
  # end

  # GET /logo_texts/1
  # GET /logo_texts/1.json
  def show
  end

  # GET /logo_texts/new
  def new
    @logo_text = LogoText.new
  end

  # GET /logo_texts/1/edit
  def edit
  end

  # POST /logo_texts
  # POST /logo_texts.json
  def create
    @logo_text = LogoText.new(logo_text_params)

    respond_to do |format|
      if @logo_text.save
        format.html { redirect_to menu_items_path, notice: 'Logo text was successfully created.' }
        format.json { render :show, status: :created, location: @logo_text }
      else
        format.html { render :new }
        format.json { render json: @logo_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logo_texts/1
  # PATCH/PUT /logo_texts/1.json
  def update
    respond_to do |format|
      if @logo_text.update(logo_text_params)
        format.html { redirect_to menu_items_path, notice: 'Logo text was successfully updated.' }
        format.json { render :show, status: :ok, location: @logo_text }
      else
        format.html { render :edit }
        format.json { render json: @logo_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logo_texts/1
  # DELETE /logo_texts/1.json
  def destroy
    @logo_text.destroy
    respond_to do |format|
      format.html { redirect_to menu_items_path, notice: 'Logo text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logo_text
      @logo_text = LogoText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logo_text_params
      params.require(:logo_text).permit(:logo_bottom_text, :url)
    end
end
