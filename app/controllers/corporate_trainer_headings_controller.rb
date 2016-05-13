class CorporateTrainerHeadingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_corporate_trainer_heading, only: [:show, :edit, :update, :destroy]

  # GET /corporate_trainer_headings
  # GET /corporate_trainer_headings.json
  # def index
  #   @corporate_trainer_headings = CorporateTrainerHeading.all
  # end

  # GET /corporate_trainer_headings/1
  # GET /corporate_trainer_headings/1.json
  def show
  end

  # GET /corporate_trainer_headings/new
  def new
    @corporate_trainer_heading = CorporateTrainerHeading.new
  end

  # GET /corporate_trainer_headings/1/edit
  def edit
  end

  # POST /corporate_trainer_headings
  # POST /corporate_trainer_headings.json
  def create
    @corporate_trainer_heading = CorporateTrainerHeading.new(corporate_trainer_heading_params)

    respond_to do |format|
      if @corporate_trainer_heading.save
        format.html { redirect_to corporate_trainers_path, notice: 'Corporate trainer heading was successfully created.' }
        format.json { render :show, status: :created, location: @corporate_trainer_heading }
      else
        format.html { render :new }
        format.json { render json: @corporate_trainer_heading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corporate_trainer_headings/1
  # PATCH/PUT /corporate_trainer_headings/1.json
  def update
    respond_to do |format|
      if @corporate_trainer_heading.update(corporate_trainer_heading_params)
        format.html { redirect_to corporate_trainers_path, notice: 'Corporate trainer heading was successfully updated.' }
        format.json { render :show, status: :ok, location: @corporate_trainer_heading }
      else
        format.html { render :edit }
        format.json { render json: @corporate_trainer_heading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corporate_trainer_headings/1
  # DELETE /corporate_trainer_headings/1.json
  def destroy
    @corporate_trainer_heading.destroy
    respond_to do |format|
      format.html { redirect_to corporate_trainers_path, notice: 'Corporate trainer heading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporate_trainer_heading
      @corporate_trainer_heading = CorporateTrainerHeading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corporate_trainer_heading_params
      params.require(:corporate_trainer_heading).permit(:heading)
    end
end
