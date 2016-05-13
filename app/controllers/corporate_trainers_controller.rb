class CorporateTrainersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_corporate_trainer, only: [:show, :edit, :update, :destroy]

  # GET /corporate_trainers
  # GET /corporate_trainers.json
  def index
    @corporate_trainers = CorporateTrainer.all
    @corporate_trainer_headings = CorporateTrainerHeading.all
  end

  # GET /corporate_trainers/1
  # GET /corporate_trainers/1.json
  def show
  end

  # GET /corporate_trainers/new
  def new
    @corporate_trainer = CorporateTrainer.new
  end

  # GET /corporate_trainers/1/edit
  def edit
  end

  # POST /corporate_trainers
  # POST /corporate_trainers.json
  def create
    @corporate_trainer = CorporateTrainer.new(corporate_trainer_params)

    respond_to do |format|
      if @corporate_trainer.save
        format.html { redirect_to @corporate_trainer, notice: 'Corporate trainer was successfully created.' }
        format.json { render :show, status: :created, location: @corporate_trainer }
      else
        format.html { render :new }
        format.json { render json: @corporate_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corporate_trainers/1
  # PATCH/PUT /corporate_trainers/1.json
  def update
    respond_to do |format|
      if @corporate_trainer.update(corporate_trainer_params)
        format.html { redirect_to @corporate_trainer, notice: 'Corporate trainer was successfully updated.' }
        format.json { render :show, status: :ok, location: @corporate_trainer }
      else
        format.html { render :edit }
        format.json { render json: @corporate_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corporate_trainers/1
  # DELETE /corporate_trainers/1.json
  def destroy
    @corporate_trainer.destroy
    respond_to do |format|
      format.html { redirect_to corporate_trainers_url, notice: 'Corporate trainer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporate_trainer
      @corporate_trainer = CorporateTrainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corporate_trainer_params
      params.require(:corporate_trainer).permit(:img, :name, :designation, :extra,:twitter,:linkedin)
    end
end
