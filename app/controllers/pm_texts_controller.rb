class PmTextsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pm_text, only: [:show, :edit, :update, :destroy]

  # GET /pm_texts
  # GET /pm_texts.json
  # def index
  #   @pm_texts = PmText.all
  # end

  # GET /pm_texts/1
  # GET /pm_texts/1.json
  def show
  end

  # GET /pm_texts/new
  def new
    @pm_text = PmText.new
  end

  # GET /pm_texts/1/edit
  def edit
  end

  # POST /pm_texts
  # POST /pm_texts.json
  def create
    @pm_text = PmText.new(pm_text_params)

    respond_to do |format|
      if @pm_text.save
        format.html { redirect_to pm_logos_path, notice: 'Pm text was successfully created.' }
        format.json { render :show, status: :created, location: @pm_text }
      else
        format.html { render :new }
        format.json { render json: @pm_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pm_texts/1
  # PATCH/PUT /pm_texts/1.json
  def update
    respond_to do |format|
      if @pm_text.update(pm_text_params)
        format.html { redirect_to pm_logos_path, notice: 'Pm text was successfully updated.' }
        format.json { render :show, status: :ok, location: @pm_text }
      else
        format.html { render :edit }
        format.json { render json: @pm_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pm_texts/1
  # DELETE /pm_texts/1.json
  def destroy
    @pm_text.destroy
    respond_to do |format|
      format.html { redirect_to pm_logos_path, notice: 'Pm text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pm_text
      @pm_text = PmText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pm_text_params
      params.require(:pm_text).permit(:bottom_text)
    end
end
